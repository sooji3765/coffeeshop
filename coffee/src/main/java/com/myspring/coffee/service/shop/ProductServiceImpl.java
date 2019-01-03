package com.myspring.coffee.service.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myspring.coffee.model.shop.dao.ProductDAO;
import com.myspring.coffee.model.shop.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDAO;
	
	@Override
	public List<ProductDTO> list() {
		
		return productDAO.list();
	}

	@Override
	public void insert(ProductDTO dto) {
		
		productDAO.insert(dto);
	}

	@Override
	public ProductDTO detail(int product_id) {
		
		return productDAO.detail(product_id);
	}

	@Override
	public void delete(int product_id) {
		productDAO.delete(product_id);
	}
	
	

}
