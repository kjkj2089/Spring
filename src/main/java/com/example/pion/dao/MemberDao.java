package com.example.pion.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.pion.application.dto.MemberResponse;
import com.example.pion.domain.Member;

public interface MemberDao {
	public String loginCheck(MemberResponse member);
	public void saveMember(Member member);
	public List<Member> findAllMember(HttpSession session);
	public List<Member> searchEmployeeList();
}
