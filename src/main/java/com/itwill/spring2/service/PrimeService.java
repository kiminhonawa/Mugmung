package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.PrimeDto;
import com.itwill.spring2.repository.PrimeRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service //-> 스프링 컨테이너에서 서비스 컴포넌트 객체를 생성하고 관리(필요한 곳에 주입).
@RequiredArgsConstructor // 2. (2) final로 선언된 필드를 초기화하는 생성자.
@Slf4j
public class PrimeService {

	private final PrimeRepository primeRepository;
	
	public List<PrimeDto> read(){
		List<PrimeDto> list = primeRepository.primeListRead();
		
		log.info("lissdfdft ={} ",list);
		
		return list;
	}
}
