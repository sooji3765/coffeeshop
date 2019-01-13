package com.myspring.coffee.service.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myspring.coffee.model.shop.dao.CartDAO;
import com.myspring.coffee.model.shop.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService {

	@Inject
	CartDAO cartDao;
	
	@Override
	public void insert(CartDTO dto) {
		
		cartDao.insert(dto);

	}

	@Override
	public List<CartDTO> list(String userid, int state) {
		
		return cartDao.list(userid,state);
	}

	@Override
	public void delete(String cart_id) {
		
		cartDao.delete(cart_id);
		
	}
}
