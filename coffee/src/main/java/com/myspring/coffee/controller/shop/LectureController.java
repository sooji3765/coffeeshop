package com.myspring.coffee.controller.shop;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.coffee.service.shop.LectureService;

@Controller
@RequestMapping("shop/lecture/*")
public class LectureController {
	
	@Inject
	LectureService lectureService;
	
	private static final Logger logger
	= LoggerFactory.getLogger("LectureController.class");
	
	@RequestMapping("lecture_list.do")
	public ModelAndView lecture_list() {
		
		return new ModelAndView("shop/lecture_list", "list", lectureService.list());
	}

}
