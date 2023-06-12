package com.itwill.spring2.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.ReserveDto;
import com.itwill.spring2.service.ReserveService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/reserve")
@Controller
public class ReserveController {
	
	private final ReserveService reserveService;
	
	@PostMapping("/booking")
	private void reserve(ReserveDto dto, Model model) {
		log.info("POST: reserve({})", dto);
		
		 int result = reserveService.reserve(dto);
		model.addAttribute("reserve", dto);
		
	}
	
	
}
