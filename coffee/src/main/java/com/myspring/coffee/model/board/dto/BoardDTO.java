package com.myspring.coffee.model.board.dto;

import java.util.Date;

public class BoardDTO {
	private int board_id;
	private String title;
	private String content;
	private Date register_date;
	private String userid;
	private int product_id;
	
	
	public int getBoard_id() {
		return board_id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getRegister_date() {
		return register_date;
	}
	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

}
