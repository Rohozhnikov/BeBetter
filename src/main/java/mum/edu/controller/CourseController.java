package mum.edu.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import mum.edu.domain.Course;
import mum.edu.domain.RecentActivities;
import mum.edu.service.CourseService;
import mum.edu.service.LectureService;
import mum.edu.service.QuizService;
import mum.edu.service.RecentActivitiesService;

@Controller
@RequestMapping("/courses")
public class CourseController {

	@Autowired
	private CourseService courseService;

	@Autowired
	private QuizService quizService;

	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private RecentActivitiesService recentActivitiesService;

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
		dataBinder.registerCustomEditor(Set.class, "lectures", new CustomCollectionEditor(Set.class) {
			protected Object convertElement(Object element) {
				Integer id = null;

				if (element instanceof String && !((String) element).equals("")) {
					try {
						id = Integer.parseInt((String) element);
					} catch (NumberFormatException e) {
						System.out.println("Element was " + ((String) element));
						e.printStackTrace();
					}
				} else if (element instanceof Long) {
					// From the database 'element' will be a Integer
					id = (Integer) element;
				}
				return id != null ? lectureService.getLectureById(id) : null;
			}
		});
		dataBinder.registerCustomEditor(Set.class, "quizzes", new CustomCollectionEditor(Set.class) {
			protected Object convertElement(Object element) {
				Integer id = null;

				if (element instanceof String && !((String) element).equals("")) {
					try {
						id = Integer.parseInt((String) element);
					} catch (NumberFormatException e) {
						System.out.println("Element was " + ((String) element));
						e.printStackTrace();
					}
				} else if (element instanceof Long) {
					// From the database 'element' will be a Integer
					id = (Integer) element;
				}
				return id != null ? quizService.getQuizById(id) : null;
			}
		});
	}

	@RequestMapping
	public String getAllCourses(Model model) {
		model.addAttribute("courses", courseService.getAllCourses());
		return "courses";
	}


	@RequestMapping(value = "/addCourse", method = RequestMethod.GET)
	public String addCourse(@ModelAttribute("newCourse") Course course, Model model) {
		model.addAttribute("quizzes", quizService.getAllQuizs());
		model.addAttribute("lectures", lectureService.getAllLectures());
		return "addCourse";
	}

	@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
	public String saveCourse(@Valid @ModelAttribute("newCourse") Course course, BindingResult result) {
		if (result.hasErrors()) {
			return "addCourse";
		}
		courseService.addCourse(course);
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("Attempting to bind disallowed fields: "
					+ StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		MultipartFile freelancerPhoto = course.getPic();
		String rootDirectory = "C:\\Users\\Eugene\\Desktop\\bebetter\\src\\main\\webapp\\resources\\images\\courses\\";

		if (freelancerPhoto != null && !freelancerPhoto.isEmpty()) {
			try {
				freelancerPhoto.transferTo(new File(rootDirectory + String.valueOf(course.getId()) + ".png"));
				System.out.println(rootDirectory + course.getId() + ".png");
			} catch (Exception e) {
				throw new RuntimeException("Product Image saving failed", e);
			}
		}
		return "redirect:/courses";
	}

	@RequestMapping(value = "/course/{id}", method = RequestMethod.GET)
	public  String courseItem(@PathVariable Integer id, Model model) {
		System.err.println("Check");
		if (id == null||id==0) {
			System.err.println("id is null");
			return "/";
		}
		Course course = courseService.getCourseById(id);
		model.addAttribute("course", course);

		model.addAttribute("courses", courseService.relatedCourses(course));

		return "course_item";
	}
	@RequestMapping(value = "/apply/{id}", method = RequestMethod.GET)
	public  String applyForCourse(@PathVariable Integer id, Model model) {
		recentActivitiesService.addRecentActivities(new RecentActivities("In progress", 0));
		Course course = courseService.getCourseById(id);
		model.addAttribute("course", course);
		System.out.println("course : = "+course);
		model.addAttribute("lectures", lectureService.getAllLecturesForCourse(course));
		System.out.println("all courses: \n"+lectureService.getAllLecturesForCourse(course));
//		model.addAttribute("quizzes", quizService.getAllQuizsByCourse(course));
		return "enrolledForCourse";
	}

}
