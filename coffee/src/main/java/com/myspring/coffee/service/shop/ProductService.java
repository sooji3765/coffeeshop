package com.myspring.coffee.service.shop;

import java.util.List;

import com.myspring.coffee.model.shop.dto.ProductDTO;

public interface ProductService {

	public List<ProductDTO> list();
	public void insert(ProductDTO dto);
	public ProductDTO detail(int product_id);
	public void delete(int product_id);
}
