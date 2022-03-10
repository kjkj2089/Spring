package com.example.pion.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.pion.application.dto.MemberRequest;
import com.example.pion.application.dto.MemberResponse;

public interface MemberService {
	public String loginCheck(MemberResponse member, HttpSession session);
	public void logout(HttpSession session);
	public MemberResponse saveMember(MemberRequest req);
	public List<MemberResponse> findAllMember(HttpSession session);
	public List<MemberResponse> searchEmployeeList();
}
