package com.itwill.spring2.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class CriDto {
	private int pageNum;  // 요청한 페이지 번호를 저장하는 변수
	private int amount;   // 한 페이지당 글 개수를 저장하는 변수
	
	// 요청 페이지 번호와 한 페이지당 글 개수를 각각 1과 10으로 초기화
	public CriDto() {
		this(1, 10);
	}

	//요청 페이지 번호와 한 페이지당 글 개수를 인자로 받아 초기화
	public CriDto(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	} 
	
}
