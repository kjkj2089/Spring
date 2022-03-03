package com.example.pion.service;

import javax.servlet.http.HttpSession;

import com.example.pion.application.dto.MemberRequest;
import com.example.pion.application.dto.MemberResponse;

public interface MemberService {
	public String loginCheck(MemberResponse member, HttpSession session);
	public void logout(HttpSession session);
	public MemberResponse saveMember(MemberRequest req);
}
