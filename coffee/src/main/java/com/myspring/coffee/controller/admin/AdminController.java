package com.myspring.coffee.controller.admin;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.coffee.model.member.dto.MemberDTO;
import com.myspring.coffee.model.shop.dto.ProductDTO;
import com.myspring.coffee.service.member.MemberService;
import com.myspring.coffee.service.shop.LectureService;
import com.myspring.coffee.service.shop.ProductService;

@Controller
@RequestMapping("admin/*")
public class AdminController {
	
	private static final Logger logger
	= LoggerFactory.getLogger("AdminController.class");
	
	@Inject
	MemberService memberService;
	
	@Inject
	ProductService productService;
	
	
	@Inject
	LectureService lectureService;
	
	@RequestMapping("login.do")
	public String login() {
		
		return "admin/login";
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		
		mav.setViewName("admin/login");
		mav.addObject("message","logout");
		
		return mav;
	}
	@RequestMapping("admin_check.do")
	public String admin_check(MemberDTO dto, HttpSession session) {
		
		Boolean result = memberService.adminCheck(dto, session);
		
		logger.info("관리자 체크 ===========>"+result);
		if(result) {
			return "redirect:/admin/dashboard.do";
		}
		return "redirect:/admin/login.do";
	}
	
	@RequestMapping("dashboard.do")
	public String dashboard() {
		
		return "admin/dashboard";
	}
	
	
	@RequestMapping("dashboard_member.do")
	public ModelAndView dashboard_member() {
		return new ModelAndView("admin/dashboard_member", "list", memberService.list());
	}
	
	
	@RequestMapping("dashboard_product.do")
	public ModelAndView dashboard_product() {
		return new ModelAndView("admin/dashboard_product", "list", productService.list());
	}
	
	@RequestMapping("dashboard_lecture.do")
	public ModelAndView dashboard_lecture() {
		return new ModelAndView("admin/dashboard_lecture", "list", lectureService.list());
	}
	
	
	
}
