package com.myspring.coffee.service.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myspring.coffee.model.board.dao.BoardDAO;
import com.myspring.coffee.model.board.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO dao;
	
	@Override
	public void insert(BoardDTO dto) {
		
		dao.insert(dto);
	}

	@Override
	public List<BoardDTO> list(int product_id) {
		
		return dao.list(product_id);
	}

}
