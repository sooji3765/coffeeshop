package com.myspring.coffee.model.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myspring.coffee.model.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean loginCheck(MemberDTO dto) {
		
		String name = sqlSession.selectOne("member.check",dto);
		
		System.out.println("로그인 이름 정보 =============>"+name);
		return (name==null)? false : true;
	}

	
	@Override
	public MemberDTO viewMember(String userid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.viewMember",userid);
	}

	@Override
	public void insertMember(MemberDTO dto) {
		
		sqlSession.insert("member.insertMember", dto);
	}


	@Override
	public int adminCheck(MemberDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.gradecheck", dto);
	}


	@Override
	public List<MemberDTO> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("member.list");
	}

}
