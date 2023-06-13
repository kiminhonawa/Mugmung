package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.ReserveDto;
import com.itwill.spring2.repository.ReserveRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReserveService {
	
	private final ReserveRepository reserveRepository;
	
	public int reserve(ReserveDto dto) {
		log.info("reserve({})", dto);
		
		// 예약 정보를 ReserveDto 객체로 전달하여 처리
		return reserveRepository.insert(dto.toEntity());
	}
}
