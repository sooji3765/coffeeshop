package com.myspring.coffee.model.shop.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myspring.coffee.model.shop.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ProductDTO> list() {
		
		return sqlSession.selectList("product.list");
	}

	@Override
	public void insert(ProductDTO dto) {
		sqlSession.insert("product.insert", dto);
	}

	@Override
	public ProductDTO detail(int product_id) {
		
		return sqlSession.selectOne("product.detail",product_id);
	}

	@Override
	public void delete(int product_id) {
		sqlSession.delete("product.delete", product_id);
		
	}
	
	
	

}
