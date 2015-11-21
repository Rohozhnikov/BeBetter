package mum.edu.controller;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.edu.domain.Quiz;
import mum.edu.service.QuestionService;
import mum.edu.service.QuizService;

@Controller
@RequestMapping("/quizzes")
public class QuizController {

	@Autowired
	private QuizService quizService;
	@Autowired
	private QuestionService questionService;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Set.class, "questions", new CustomCollectionEditor(Set.class) {
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
				return id != null ? questionService.getQuestionById(id) : null;
			}
		});
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addQuiz(@ModelAttribute("newQuiz") Quiz quiz, Model model) {
		model.addAttribute("questions", questionService.getAllQuestions());
		return "addQuiz";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveQuiz(@ModelAttribute("newQuiz") Quiz quiz) {
		quizService.addQuiz(quiz);
		return "redirect:/quizzes/add";
	}

	@RequestMapping
	public String allQuizzes(Model model) {
		model.addAttribute("quizes", quizService.getAllQuizs());
		return "quizzes";
	}
}
