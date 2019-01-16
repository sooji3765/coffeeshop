package com.myspring.coffee.service.board;

import java.util.List;

import com.myspring.coffee.model.board.dto.BoardDTO;

public interface BoardService {

	public void insert(BoardDTO dto);
	public List<BoardDTO> list(int product_id);
}
