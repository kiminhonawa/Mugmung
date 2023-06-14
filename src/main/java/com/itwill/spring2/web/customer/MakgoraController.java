package com.itwill.spring2.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.MakgoraDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/costomer")
@Controller
public class MakgoraController {
	
    
	public String create(MakgoraDto dto) {
		log.info("POST: create({})", dto);
	}
}
