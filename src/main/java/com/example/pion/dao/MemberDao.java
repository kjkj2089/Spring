package com.example.pion.dao;

import com.example.pion.application.dto.MemberResponse;
import com.example.pion.domain.Member;

public interface MemberDao {
	public String loginCheck(MemberResponse member);
	public void saveMember(Member member);
	
}
