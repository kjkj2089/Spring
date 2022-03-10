package com.example.pion.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.pion.application.dto.MemberResponse;
import com.example.pion.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	@Autowired //필드주입방식
	private MemberService memberService;
	
	
	@RequestMapping("employee/employeeMgmt.do")
	public String registEmployee(@RequestParam("method") String method, HttpSession session, Model model) {
		//System.out.println(method);
		if(method.equals("selectEmployeeList")) {
			List<MemberResponse> Member = memberService.searchEmployeeList();
			model.addAttribute("EmpList", Member);
			System.out.println(Member.get(0).getEmp_no());
			return "main/Welcome";
		}
		else if(method.equals("selectEmployeeList_excel")) {
			return "employee/employeeMgmt";
		}
		
		return "employee/employeeList";

	}
		

	
	@RequestMapping("employee/modifyNewEmployee.do")

	public String modifyEmployee(Model model, HttpSession session) {
		
		List<MemberResponse> Member = memberService.findAllMember(session);
		model.addAttribute("emp", Member);
		return "employee/modifyNewEmployee";
	}
	
	@RequestMapping("employee/employeeList.do")
	public String 직원조회() {
		return "employee/employeeList";
	}
	@RequestMapping("/test")
	public String Test() {
		return "test";
	}
	
}
