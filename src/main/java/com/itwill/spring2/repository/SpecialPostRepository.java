package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.dto.SpecialPostDto;

public interface SpecialPostRepository {
	List<SpecialPostDto> postRead(String id);
	
	int insert(SpecialPostDto dto);
}
