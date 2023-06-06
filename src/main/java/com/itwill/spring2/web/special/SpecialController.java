package com.itwill.spring2.web.special;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.blog.BlogController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/special")
@Controller
public class SpecialController {
	 @GetMapping("/special")
	    public String special() {
	        log.info("special()");
	        
	        return "/special/special";
	    }
}
