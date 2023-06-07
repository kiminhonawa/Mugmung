package com.itwill.spring2.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.domain.TastyStore;
import com.itwill.spring2.domain.booking;
import com.itwill.spring2.dto.TastyListDto;
import com.itwill.spring2.service.TastyRoadService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/reserve")
@Controller
public class TastyRoadController {

	@Autowired
	private TastyRoadService tastyRoadService;
	
	@GetMapping("/booking")
	public void bookingPage() {
		log.info("GET: booking()");
	}
	
	@GetMapping("/list")
	public void listPage() {
		log.info("GET: list()");
	}
	
	@GetMapping("/reserve")
	public void reservePage() {
		log.info("GET: reservePage()");
	}
	
	@GetMapping("/test4")
	public void testPage() {
		log.info("GET: reservePage()");
	}
	
	
	
	
}
