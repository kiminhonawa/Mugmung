package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.IndexListDto;
import com.itwill.spring2.repository.IndexRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MainBestService {
	private final IndexRepository indexRepository;
	
	public List<IndexListDto> read(String id) {
		List<IndexListDto> list = indexRepository.mainbestListRead(id);
		
		log.info("list={}", list);
		
		return list;
}
}
