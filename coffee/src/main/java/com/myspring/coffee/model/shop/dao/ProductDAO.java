package com.myspring.coffee.model.shop.dao;

import java.util.List;

import com.myspring.coffee.model.shop.dto.ProductDTO;

public interface ProductDAO {
	
	public List<ProductDTO> list();
	public void insert(ProductDTO dto);
	public ProductDTO detail(int product_id);
	public void delete(int product_id);

}
