package com.itwill.spring2.dto;

import com.itwill.spring2.domain.Criteria;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class PageDto {

	private int startPage, endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	public PageDto(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		//페이지 숫자 보여지는 거 3개
		this.endPage =(int)(Math.ceil(cri.getPageNum()/3.0)) * 3;
		
		this.startPage = endPage - 2;
		
		this.prev = this.startPage > 0;
		
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		
		this.endPage = realEnd <= endPage? realEnd : endPage;
		
		this.next = this.endPage < realEnd;
		
		
	}
}
