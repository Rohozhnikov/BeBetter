package mum.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.edu.domain.QuestionItem;
import mum.edu.service.QuestionItemService;

@Controller
@RequestMapping("/questionItems")
public class QuestionItemController {

	@Autowired
	private QuestionItemService questionItemService;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addQuiz(@ModelAttribute("newAnswer")QuestionItem questionItem){
		
		return "addAnswer";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String saveQuiz(@ModelAttribute("newAnser")QuestionItem questionItem){
		questionItemService.addQuestionItem(questionItem);
		return "redirect:/questionItems/add";
	}
	@RequestMapping
	public String allAnswers(Model model){
		model.addAttribute("answers",questionItemService.getAllQuestionItems());
		return "quizzes";
	}
}
