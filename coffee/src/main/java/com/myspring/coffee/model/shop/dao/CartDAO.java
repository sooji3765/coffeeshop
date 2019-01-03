package com.myspring.coffee.model.shop.dao;

import java.util.List;

import com.myspring.coffee.model.shop.dto.CartDTO;

public interface CartDAO {
	
	public void insert(CartDTO dto);
	public List<CartDTO> list(String userid, int state);

}
