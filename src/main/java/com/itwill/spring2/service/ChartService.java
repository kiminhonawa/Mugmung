package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.ChartListDto;
import com.itwill.spring2.repository.ChartRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChartService {

	private final ChartRepository chartRepository;
	
	public List<ChartListDto> read() {
		log.info("chartListDto read()");
		List<ChartListDto> list = chartRepository.chartRead();
		
		return list;
	}
}
