package com.example.pion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
	@RequestMapping("test.do")
	public void signUpMember(@ModelAttribute MemberRequest req, Model model) {
		MemberResponse member = memberService.saveMember(req);
		model.addAttribute("member",member);
		System.out.println("testsest");
	}
	
}
