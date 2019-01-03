package com.myspring.coffee.service.member;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.myspring.coffee.model.member.dao.MemberDAO;
import com.myspring.coffee.model.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDao;
	
	@Override
	public boolean loginCheck(MemberDTO dto, HttpSession session) {
		
		Boolean result = memberDao.loginCheck(dto);
		
		System.out.println("service 결과 ====>"+result);
		if(result) {
			MemberDTO user = viewMember(dto.getUserid());
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", user.getUsername());	
			return true;
		}
		
		return false;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	
	@Override
	public MemberDTO viewMember(String userid) {
	
		return memberDao.viewMember(userid);
	}

	@Override
	public void insertMember(MemberDTO dto) {
		
		memberDao.insertMember(dto);
	}

	@Override
	public boolean adminCheck(MemberDTO dto, HttpSession session) {
		
		int result = memberDao.adminCheck(dto);
		
		System.out.println("admin service 결과 유저 넘 ====>"+result);
		if(result==3) {
			MemberDTO user = viewMember(dto.getUserid());
			session.setAttribute("admin_userid", dto.getUserid());
			session.setAttribute("name", user.getUsername());	
			return true;
		}
		
		return false;
	}

	@Override
	public List<MemberDTO> list() {
		// TODO Auto-generated method stub
		return memberDao.list();
	}
	
	

}
