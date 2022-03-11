package com.example.pion.service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
		String emp_name= memberDao.loginCheck(member);
		if(emp_name != null) {
			session.setAttribute("login_id",member.getLogin_id());
			session.setAttribute("password", member.getPassword());
			session.setAttribute("emp_name", emp_name);
		}
		return emp_name;
	}
	
	public int searchLoginIdChkPop(String loginId) {
		int login_id=memberDao.searchLoginIdChkPop(loginId);
		return login_id;
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
				req.getJob_code(),
				req.getAuth_gubun_code(),
				req.getEmp_no(),
				req.getBiz_grp_id(),
				req.getMarried_yn(),
				req.getEnter_yn()
				);
		
		memberDao.saveMember(member);
		return MemberResponse.of(member);
	}
	public List<MemberResponse> findAllMember(HttpSession session) {
		return memberDao.findAllMember(session)
				.stream()
				.map(MemberResponse::of)
				.collect(Collectors.toList());
	}
	
	public List<MemberResponse> searchEmployeeList(Map<String,Object> parameters) {
		return memberDao.searchEmployeeList(parameters)
				.stream()
				.map(MemberResponse::of)
				.collect(Collectors.toList());
	}
	public void modifyNewEmployeeRst(Member member){
		memberDao.modifyNewEmployeeRst(member);
	}
}

