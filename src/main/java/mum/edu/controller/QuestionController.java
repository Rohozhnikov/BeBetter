package mum.edu.controller;

import java.util.List;
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

import mum.edu.domain.Question;
import mum.edu.domain.QuestionItem;
import mum.edu.service.QuestionItemService;
import mum.edu.service.QuestionService;

@Controller
@RequestMapping("/questions")
public class QuestionController {

	@Autowired
	private QuestionService questionService;
	@Autowired
	private QuestionItemService questionItemService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addQuestion(@ModelAttribute("newQuestion") Question question, Model model) {
		List<QuestionItem> activeQuestionImpl = questionItemService.getAllQuestionItems();
		model.addAttribute("questionItems", activeQuestionImpl);
		return "addQuestion";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Set.class, "questionItems", new CustomCollectionEditor(Set.class) {
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
				return id != null ? questionItemService.getQuestionItemById(id) : null;
			}
		});
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveQuestion(@ModelAttribute("newQuestion") Question question) {
		
		questionService.addQuestion(question);
		return "redirect:/questions/add";
	}
}
