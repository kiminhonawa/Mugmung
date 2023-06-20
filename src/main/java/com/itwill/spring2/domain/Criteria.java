package com.itwill.spring2.domain;

import lombok.Data;

@Data
public class Criteria {
	
	private int pageNum;
	private int amount;
	private String id;
	
	public Criteria() {
		this.pageNum = 1;
		this.amount = 3;
	}
	
	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
