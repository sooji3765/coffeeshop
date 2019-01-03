package com.myspring.coffee.service.member;

import java.util.List;

import javax.servlet.http.HttpSession;
import com.myspring.coffee.model.member.dto.MemberDTO;

public interface MemberService {
	
	public boolean loginCheck(MemberDTO dto, HttpSession session);
	public boolean adminCheck(MemberDTO dto, HttpSession session);
	public void logout(HttpSession session);
	public MemberDTO viewMember(String userid);
	public void insertMember(MemberDTO dto);
	public List<MemberDTO> list();
	
}
