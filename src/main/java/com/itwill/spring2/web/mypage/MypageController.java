package com.itwill.spring2.web.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/mypage") 
@Controller 
public class MypageController {
	
	@GetMapping("/mypage")
	public String mypage() {
		log.info("mypage");
		
		
		
		return "/mypage/mypage";
	}
}
