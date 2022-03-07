package com.example.pion.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.pion.application.dto.MemberResponse;
import com.example.pion.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {
	
	@Autowired //필드주입방식
	private MemberService memberService;
	
	public LoginController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("/index")
	public String 로그인_화면() {
		log.info("========================== Login View ==========================");
		return "index";
	}
	
	/*
	 * @RequestMapping("/login/session") public String 로그인_검증_세션_등록(@RequestBody
	 * MemberRequest member, HttpSession session) { // 로그인 검증 후 세션 등록
	 * memberService.findMember();
	 * 
	 * // session.setAttribute(name, value);
	 * 
	 * return "login"; }
	 */
	
	@RequestMapping("login.do")
	public ModelAndView login_check(@ModelAttribute MemberResponse member, HttpSession session) {
		String emp_name= memberService.loginCheck(member, session);
		ModelAndView mav = new ModelAndView();
		if( emp_name != null) {
			mav.setViewName("main/home");
			mav.addObject("message", "success");
			
		} else {
			
			mav.setViewName("login");
			mav.addObject("message", "error");

		}
		return mav;

	}
	
	
	 @RequestMapping("home.do") 
	 public String 메인_화면() { return "redirect:test"; }
	 
	
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		mav.setViewName("login");
		mav.addObject("message", "logout");
		session.invalidate(); 
		
		return mav;
	}
	
	@RequestMapping("/logout")
	public String 로그아웃_세션_삭제(HttpSession session) {
//      session.invalidate();                    // 세션에 저장된 모든 값 삭제
//		session.removeAttribute(name);    // 세션 특정 키에 있는 값 제거
		return "login";
	}
	
	
}
