package com.myspring.coffee;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		
		logger.info("index 화면에서 session 확인"+session.getAttribute("userid"));
		logger.info("index 화면에서 admin_session 확인"+session.getAttribute("admin_userid"));
		return "index";
	}
	
	@RequestMapping("contact.do")
	public String contact() {		
		return "contact";
	}
	
	@RequestMapping("contact_insert.do")
	public String contact_insert() {
		
		return "redirect:/";
	}
	
	
	
}
