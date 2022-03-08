package com.example.pion.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.pion.application.dto.MemberRequest;
import com.example.pion.application.dto.MemberResponse;
import com.example.pion.domain.Member;
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
		

	
	@RequestMapping("employee/modifyNewEmployee.do")

	public String modifyEmployee(@ModelAttribute MemberRequest req, Member member, Model model, HttpSession session) {
		
		List<MemberResponse> Member = memberService.findAllMember(member, session);
		model.addAttribute("emp", Member);
		return "employee/modifyNewEmployee";
	}
	
	@RequestMapping("employee/employeeList.do")
	public String 직원조회() {
		return "employee/employeeList";
	}
	
}
