package com.itwill.spring2.web.best;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.blog.BlogController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/best")
@Controller
public class BestController {
	@GetMapping("/best")
    public String best() {
        log.info("best()");
        
        return "/best/best";
    }
	
	
}
