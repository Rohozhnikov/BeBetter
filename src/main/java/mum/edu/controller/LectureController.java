package mum.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.edu.domain.Lecture;
import mum.edu.service.LectureService;

@Controller
@RequestMapping("lectures")
public class LectureController {

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addLecture(@ModelAttribute("newLecture")Lecture lecture){
		
		return "addLecture";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveLecture(@ModelAttribute("newLecture")Lecture lecture){
		lectureService.addLecture(lecture);
		return "redirect:/lectures/add";
	}
}
