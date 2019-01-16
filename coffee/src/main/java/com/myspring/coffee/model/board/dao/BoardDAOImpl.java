package com.myspring.coffee.model.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myspring.coffee.model.board.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void insert(BoardDTO dto) {
		
		sqlSession.insert("board.insert_product", dto);

	}

	@Override
	public List<BoardDTO> list(int product_id) {
		
		return sqlSession.selectList("board.list_product",product_id);
	}

}
