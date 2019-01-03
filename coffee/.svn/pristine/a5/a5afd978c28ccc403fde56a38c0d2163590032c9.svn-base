package com.myspring.coffee.model.shop.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myspring.coffee.model.shop.dto.LectureDTO;

@Repository
public class LectureDAOImpl implements LectureDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<LectureDTO> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("lecture.list");
	}

	@Override
	public void insert(LectureDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public LectureDTO detail(int lecture_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
