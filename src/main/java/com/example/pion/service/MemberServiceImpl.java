package com.example.pion.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.pion.application.dto.MemberRequest;
import com.example.pion.application.dto.MemberResponse;
import com.example.pion.dao.MemberDao;
import com.example.pion.domain.Member;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao memberDao;
	
	@Override
	public String loginCheck(MemberResponse member, HttpSession session) {
		String name= memberDao.loginCheck(member);
		if(name != null) {
			session.setAttribute("login_id",member.getLogin_id());
			session.setAttribute("name", name);
		}
		return name;
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
	public MemberResponse saveMember(MemberRequest req) {
		Member member = new Member(
				req.getLogin_id(),
				req.getPassword(),
				req.getEmp_name(),
				req.getResd_no_1() + "-" + req.getResd_no_2(),
				req.getMy_birthday(),
				req.getSolar_yn(),
				req.getMarried_anniver_date(),
				req.getComp_couple_yn(),
				req.getEnter_date(),
				req.getBefore_career_year() + req.getBefore_career_month(),
				req.getCompany_career_year() + req.getCompany_career_month(),
				req.getEmail(),
				req.getHp_tel_no(),
				req.getHome_addr(),
				req.getNow_addr(),
				req.getBase_team_id(),
				req.getJob_code()
				);
		
		memberDao.saveMember(member);
		return MemberResponse.of(member);
	}
}
