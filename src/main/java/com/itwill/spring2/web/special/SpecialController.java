package com.itwill.spring2.web.special;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.SpecialPostDto;
import com.itwill.spring2.service.SpecialPostService;
import com.itwill.spring2.web.blog.BlogController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/special")
@Controller
public class SpecialController {
	
	private final SpecialPostService specialPostService;
	
	 @GetMapping("/special")
	    public String special() {
	       
			 
	        return "/special/special";
	    }
	 
	 @GetMapping("/specialPost")
	 	public String specialPost() {
		 log.info("special()");
		
		 return "/special/specialPost";
	 }
	 
	 @PostMapping("/specialPost")
	 	public String specialPost(SpecialPostDto dto) {
		 
		 int result = specialPostService.create(dto);
		 
		 return "/special/specialPost";
	 }
}
