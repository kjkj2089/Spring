package com.example.pion.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.pion.application.dto.MemberRequest;
import com.example.pion.application.dto.MemberResponse;
import com.example.pion.domain.Member;

public interface MemberService {
	public String loginCheck(MemberResponse member, HttpSession session);
	public void logout(HttpSession session);
	public MemberResponse saveMember(MemberRequest req);
	public List<MemberResponse> findAllMember(HttpSession session);
	public List<MemberResponse> searchEmployeeList(Map<String,Object> parameters);
	public void modifyNewEmployeeRst(Member member);
	public int searchLoginIdChkPop(String login_id);
}
