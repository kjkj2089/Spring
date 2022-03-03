package com.example.pion.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.pion.application.dto.MemberRequest;
import com.example.pion.application.dto.MemberResponse;
import com.example.pion.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	@Autowired //필드주입방식
	private MemberService memberService;
	
	@RequestMapping("employee/employeeMgmt.do")
	public String registEmployee(){
		log.info("success");
		return "employee/employeeMgmt";
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(@ModelAttribute MemberResponse member, HttpSession session) {
		String name= memberService.loginCheck(member, session);
		ModelAndView mav = new ModelAndView();
		if( name != null) {
			mav.setViewName("home");
		} else {
			mav.setViewName("login");
			mav.addObject("message", "error");
		}
		return mav;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		mav.setViewName("login");
		mav.addObject("message", "logout");
		return mav;
	}
	
	@RequestMapping("/employeement/newEmployee.do")
	public void signUpMember(@ModelAttribute MemberRequest req, Model model) {
		MemberResponse member = memberService.saveMember(req);
		model.addAttribute("member",member);
		
	}
	
}
