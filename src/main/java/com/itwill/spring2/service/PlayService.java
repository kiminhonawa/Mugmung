package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.InnPlayListDto;
import com.itwill.spring2.repository.InnPlayRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class PlayService {

	private final InnPlayRepository innPlayRepository;
	
	public List<InnPlayListDto> read(){
		
		List<InnPlayListDto> list = innPlayRepository.playListRead();
		
		return list;
	}
}
