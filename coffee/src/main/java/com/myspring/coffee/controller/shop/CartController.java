package com.myspring.coffee.controller.shop;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.coffee.model.shop.dto.CartDTO;
import com.myspring.coffee.model.shop.dto.ProductDTO;
import com.myspring.coffee.service.member.MemberService;
import com.myspring.coffee.service.shop.CartService;
import com.myspring.coffee.service.shop.ProductService;

@Controller
@RequestMapping("shop/cart/*")
public class CartController {
	
	private static final Logger logger
	= LoggerFactory.getLogger("CartController.class");
	
	
	@Inject
	CartService cartService;
	
	@Inject
	ProductService productService;
	
	@Inject
	MemberService memberService;
	
	
	// 바로 구매
	@RequestMapping("insert.do")
	public String cart_insert(CartDTO dto, HttpSession session) {
		
		String userid = (String)session.getAttribute("userid");
		
		if(userid==null) {
			return "redirect:/member/login.do";
		}else {
			dto.setUserid(userid);
			dto.setState(2);
			cartService.insert(dto);
			return "redirect:/shop/cart/cart_list.do";
		}
	}
	
	
	// 장바구니 인
	@RequestMapping("insert_basket.do")
	public String insert_basket(CartDTO dto, HttpSession session) {
		
		String userid = (String)session.getAttribute("userid");
		
		if(userid==null) {
			return "redirect:/member/login.do";
		}else {
			dto.setUserid(userid);
			dto.setState(1);
			cartService.insert(dto);
			return "redirect:/shop/cart/basket_list.do";
		}
	}
	
	
	//바로 구매 리스트
	@RequestMapping("cart_list.do")
	public ModelAndView cart_list(HttpSession session, ModelAndView mav) {
		
		HashMap<String, Object> map= new HashMap<>();
		String userid = (String)session.getAttribute("userid");
		
		if(userid!=null) {
		int state =2;
		List<CartDTO> list = cartService.list(userid,state);
		int sumMoney = 0;
		for (int i = 0; i < list.size(); i++) {
			int  product_id=list.get(i).getProduct_id();
			ProductDTO product =productService.detail(product_id);
			
			list.get(i).setProduct_name(product.getProduct_name());
			int amount = list.get(i).getAmount();
			int price = product.getPrice();
			list.get(i).setMoney(amount*price);
			sumMoney+= list.get(i).getMoney();
			
		}
		map.put("list", list);
		map.put("cnt", list.size());
		map.put("summoney", sumMoney);
		
		mav.setViewName("shop/cart_list");
		mav.addObject("map", map);
		
		}else {
			mav.setViewName("redirect:/member/login.do");
		}
		
		return mav;
		
	}
	
	// 장바구니 리스트
	@RequestMapping("basket_list.do")
	public ModelAndView bask_list(HttpSession session, ModelAndView mav) {
		
		HashMap<String, Object> map= new HashMap<>();
		String userid = (String)session.getAttribute("userid");
		
		if(userid!=null) {
		int state =1;
		List<CartDTO> list = cartService.list(userid,state);
		int sumMoney = 0;
		for (int i = 0; i < list.size(); i++) {
			int  product_id=list.get(i).getProduct_id();
			ProductDTO product =productService.detail(product_id);
			
			list.get(i).setProduct_name(product.getProduct_name());
			int amount = list.get(i).getAmount();
			int price = product.getPrice();
			list.get(i).setMoney(amount*price);
			sumMoney+= list.get(i).getMoney();
			
		}
		map.put("list", list);
		map.put("cnt", list.size());
		map.put("summoney", sumMoney);
		
		mav.setViewName("shop/basket_list");
		mav.addObject("map", map);
		
		}else {
			mav.setViewName("redirect:/member/login.do");
		}
		
		return mav;
		
	}
	
	
}
