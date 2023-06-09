	package com.itwill.spring2.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.TastyStore;
import com.itwill.spring2.dto.TastyListDto;
import com.itwill.spring2.repository.TastyRoadRepository;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class TastyRoadService {
	
	@Autowired
	private TastyRoadRepository tastyRoadRepository;

	public List<TastyListDto> read() {
		
		List<TastyStore> list = tastyRoadRepository.selectAll();
		log.info("read()={}", list);
		
		List<TastyListDto> result = new ArrayList<>();
		for (TastyStore tastyStore : list) {
			result.add(TastyListDto.fromEntity(tastyStore));
		}
		
		
		return result;
		
		
	}
	

}
