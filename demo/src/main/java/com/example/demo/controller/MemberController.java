package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.MemberRequest;
import com.example.demo.dto.MemberResponse;
import com.example.demo.service.MemberService;

@Controller //컨트롤러 빈 주입
@RequestMapping("/member") 
public class MemberController {
	@Autowired //필드주입방식
	MemberService memberService; //비즈니스로직을 위한 빈 클래스 생성
	
	//생성자 주입방식
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping
	public String showMember() {
		return "member/member"; //jsp를 넣으면된다.
	}
	
	@RequestMapping(path = "/signUp")
	public String signUpMember(@ModelAttribute MemberRequest req, Model model){ 
		MemberResponse member =memberService.saveMember(req);
		
		
		model.addAttribute("member",member);
			
		return "member/memberJoinFrom";
	}
	
	@RequestMapping("/board")
	public String showBoard() {
		return "member/memberBoard";
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public List<MemberResponse> findAllMember() {
		memberService.findAllMember();
		return memberService.findAllMember();
	}
	
	
}
