package com.myspring.coffee.model.board.dao;

import java.util.List;

import com.myspring.coffee.model.board.dto.BoardDTO;

public interface BoardDAO {
	public void insert(BoardDTO dto);
	public List<BoardDTO> list(int product_id);
	
}
