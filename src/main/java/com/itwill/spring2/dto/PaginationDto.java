package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class PaginationDto {
	private int startPage;	// 페이지 블록의 시작 페이지를 저장
	private int endPage;	// 페이지 블록의 끝 페이지를 저장
	private boolean prev;	// 이전 페이지 여부를 저장하는 변수
	private boolean next;	// 다음 페이지 여부를 저장하는 변수
	
	private int total;		// 전체 글 개수를 저장하는 변수
	private CriDto cri;		// 요청한 페이지 번호와 한 페이지당 글 개수를 저장하는 CriDto 객체
	
	public PaginationDto(CriDto cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		// 여기서 5는 페이지 블록을 구성하는 페이지 개수
		// 현재 페이지 번호(cri.getPageNum())를 5로 나눈 뒤 올림하여 설정
		this.endPage = (int)Math.ceil(cri.getPageNum()/5.0)*5;
		
		// endPage에서 4를 뺀 값을 설정 
		this.startPage = this.endPage - (5-1);
		
		// 전체 글 개수(total)를 한 페이지당 글 개수(cri.getAmount())로 나눈 뒤 올림하여 설정
		int realEnd = (int)Math.ceil((double)total / cri.getAmount());
		
		// realEnd가 endPage보다 작을 경우 endPage 값을 조정
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		// prev: startPage가 1보다 큰지 확인하여 설정
		this.prev = this.startPage > 1;
		
		//next: endPage가 realEnd보다 작은지 확인하여 설정
		this.next = this.endPage < realEnd;
		
	}// 생성자
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
