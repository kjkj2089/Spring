package com.example.pion.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.pion.application.dto.MemberResponse;
import com.example.pion.domain.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	/*
	 * MemberDao mapper;
	 * 
	 * @Autowired public MemberDaoImpl(SqlSession sqlSession) { mapper =
	 * sqlSession.getMapper(MemberDao.class); }
	 */
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public String loginCheck(MemberResponse member) {
		return sqlSession.selectOne("member.login_check", member);
	}

	@Override
	public void saveMember(Member member) {
		sqlSession.insert("saveMember",member);
	}


}
