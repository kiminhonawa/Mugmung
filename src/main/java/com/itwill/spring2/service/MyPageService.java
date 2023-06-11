package com.itwill.spring2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.MyPagePurchasedDto;
import com.itwill.spring2.dto.MyPageReviewedDto;
import com.itwill.spring2.repository.MyPageRepository;
import com.itwill.spring2.repository.PostRepository;
import com.itwill.spring2.repository.ReplyRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor // 2. (2) final로 선언된 필드를 초기화하는 생성자.
@Slf4j
@Service
public class MyPageService {
	
	@Autowired
	private MyPageRepository myPageRepository;

	public List<MyPageReviewedDto> readReviewByUsername(String username) {
		log.info("readReviewByUsername(username={})",username);
		
		return myPageRepository.readReviewByUsername(username);
	}

	public List<MyPagePurchasedDto> readPurchaseByUsername(String username) {
		log.info("readReviewByUsername(username={})",username);
		
		return myPageRepository.readPurchaseByUsername(username);
	}

	
}
