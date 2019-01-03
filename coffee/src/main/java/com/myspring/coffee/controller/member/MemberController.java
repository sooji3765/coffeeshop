package com.myspring.coffee.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.jfree.util.Log;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.coffee.model.member.dto.MemberDTO;
import com.myspring.coffee.service.member.MemberService;

@Controller
@RequestMapping("member/*")
public class MemberController {
	
	@Inject
	MemberService memberService;
	
	private static final Logger logger
	= LoggerFactory.getLogger("MemberController.class");
	
	@RequestMapping("login.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("register.do")
	public String register() {
		return "member/register";
	}
	
	@RequestMapping("register_check.do")
	public String register_check(MemberDTO dto) {
		
		memberService.insertMember(dto);
		
		return "redirect:/";
	}
	
	
	/*로그인 체크*/
	@RequestMapping("login_check.do")
	public ModelAndView login_check(MemberDTO dto, HttpSession session) {
		
		boolean result = memberService.loginCheck(dto, session);
		
		ModelAndView mav = new ModelAndView();
		
		logger.info("로그인 결과 확인  ========>"+result);
		if(result) {
			mav.setViewName("redirect:/member/infomember.do");
		}else {
			mav.setViewName("member/login");
			mav.addObject("message","error");
		}
		
		return mav;
	}
	
	//	로그아웃
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		
		mav.setViewName("member/login");
		mav.addObject("message","logout");
		return mav;
	}
	
	
	//사용자 정보
	@RequestMapping("infomember.do")
	public ModelAndView infomember(HttpSession session) {
		
		String userid = (String)session.getAttribute("userid");
		logger.info("로그인 유저 아이디:"+userid);
		return new ModelAndView("member/infomember", "member", memberService.viewMember(userid));
	
	}
	

}
