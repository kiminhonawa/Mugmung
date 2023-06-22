package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.SpecialPostDto;
import com.itwill.spring2.repository.SpecialPostRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class SpecialPostService {
	
	private final SpecialPostRepository specialPostRepository;
	
	public List<SpecialPostDto> read(String id){
		List<SpecialPostDto> list = specialPostRepository.postRead(id);
		
		return list;
	}
	
	public int create(SpecialPostDto dto) {
		return specialPostRepository.insert(dto);
	}
}
