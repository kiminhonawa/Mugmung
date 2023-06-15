package com.itwill.spring2.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor 
@RequestMapping("/admin") 
@Controller 
public class AdminNoticeController {

	@GetMapping("main/notice")
	public String notice() {
		log.info("notice()");
		return "admin/notice";
		
	}
}
