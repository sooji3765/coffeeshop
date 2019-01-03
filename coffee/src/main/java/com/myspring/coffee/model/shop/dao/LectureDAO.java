package com.myspring.coffee.model.shop.dao;

import java.util.List;

import com.myspring.coffee.model.shop.dto.LectureDTO;

public interface LectureDAO {
	
	public List<LectureDTO> list();
	public void insert(LectureDTO dto);
	public LectureDTO detail(int lecture_id);

}
