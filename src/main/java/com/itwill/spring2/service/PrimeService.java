package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.PrimeDto;
import com.itwill.spring2.repository.PrimeRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class PrimeService {
	private final PrimeRepository primeRepository;
	
	public List<PrimeDto> read(){
		List<PrimeDto> list = primeRepository.primeListRead();
		
		log.info("lissdfdft ={} ",list);
		
		return list;
	}
}
