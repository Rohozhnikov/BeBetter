package mum.edu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.edu.domain.User;
import mum.edu.service.CourseService;
import mum.edu.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@Autowired
	private CourseService courseService;

	/**
	 * @return return a view to a welcome page
	 */
	@RequestMapping({ "/", "/welcome" })
	public String welcome(Model model) {
		model.addAttribute("courses", courseService.getAllCourses());
		return "welcome";
	}

	/**
	 * @param model
	 *            Spring model object
	 * @return return a view to signup page
	 */
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(@ModelAttribute("newUser") User user) {
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("newUser") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "signup";
		}
		user.getCredentials().setAuthority("ROLE_USER");
		user.getCredentials().setEnabled(true);
		userService.addCustomer(user);
		return "welcome";
	}

}
