package com.myspring.coffee.service.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myspring.coffee.model.shop.dao.LectureDAO;
import com.myspring.coffee.model.shop.dto.LectureDTO;

@Service
public class LectureServiceImpl implements LectureService {

	@Inject
	LectureDAO lectureDAO;
	
	@Override
	public List<LectureDTO> list() {
		// TODO Auto-generated method stub
		return lectureDAO.list();
	}

}
