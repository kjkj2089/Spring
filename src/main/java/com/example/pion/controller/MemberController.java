package com.example.pion.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String registEmployee(@RequestParam("method") String method, @RequestParam(required=false) String rowsPerPage, HttpSession session, Model model, Member member, @RequestParam(required=false) String login_id,
			@RequestParam(required=false) String param_emp_name, @RequestParam(required=false) String base_team_id, @RequestParam(required=false) String job_code, @RequestParam(required=false) String enter_yn, MemberRequest req) {
		
		Map<String,Object>parameters = new HashMap<String,Object>();
		parameters.put("param_emp_name", param_emp_name);
		parameters.put("base_team_id", base_team_id);
		parameters.put("job_code", job_code);
		parameters.put("enter_yn", enter_yn);
		parameters.put("rowsPerPage", rowsPerPage);
		
		if(method.equals("selectEmployeeList")) {
			List<MemberResponse> Member = memberService.searchEmployeeList(parameters);
			model.addAttribute("EmpList", Member);
			return "main/Welcome";
		}
		else if(method.equals("selectEmployeeList_excel")) {
			return "employee/employeeMgmt";
		}
		else if(method.equals("modifyNewEmployeeRst")) {
			memberService.modifyNewEmployeeRst(member);
			return "employee/modifyNewEmployee";
		}
		else if(method.equals("viewNewEmployee")) {
			return "employee/employeeMgmt";
		}
		else if(method.equals("searchLoginIdChkPop")) {
			int login_id_Flag = memberService.searchLoginIdChkPop(login_id);
			model.addAttribute("login_id_Flag", login_id_Flag);
			model.addAttribute("login_id", login_id);
			if(login_id_Flag == 0)
			return "employee/loginValid";
			else {
				return "employee/loginInvalid";
			}
		}
		else if(method.equals("insertNewEmployee")) {
			memberService.saveMember(req);
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
	
}
