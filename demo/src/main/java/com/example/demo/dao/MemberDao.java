package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.domain.Member;

//@Repository
@Mapper
public interface MemberDao {
	/*
	 * @Autowired public SqlSession sqlSession;
	 * 
	 * public void saveMember(Member member) {
	 * sqlSession.insert("saveMember",member); }
	 */
	public void saveMember(Member member);
	
	public List<Member> findAllMember();
}
