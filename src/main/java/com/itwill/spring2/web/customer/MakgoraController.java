package com.itwill.spring2.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.MakgoraDto;
import com.itwill.spring2.service.MakgoraService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/costomer")
@Controller
public class MakgoraController {
	
	private final MakgoraService makgoraService;
	
	public String create(MakgoraDto dto) {
		log.info("POST: create({})", dto);
		
		int result = makgoraService.create(dto);
		log.info("1:1문의 결과={}", result);
		
		
		return "redirect:/mugmung/main";
	}
}
