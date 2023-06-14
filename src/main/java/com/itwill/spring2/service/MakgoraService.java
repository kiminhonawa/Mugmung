package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.MakgoraDto;
import com.itwill.spring2.repository.MakgoraRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MakgoraService {
	
	private final MakgoraRepository makgoraRepository;
	
	
	public int create(MakgoraDto dto) {
		log.info("create({})", dto);
		
		return makgoraRepository.insert(dto);
	}
	
	
	
	
	
	
	
	
}
