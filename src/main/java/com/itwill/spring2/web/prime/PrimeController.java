package com.itwill.spring2.web.prime;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.blog.BlogController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/prime")
@Controller
public class PrimeController {
	@GetMapping("/prime")
    public String prime() {
        log.info("prime()");
        
        return "/prime/prime";
    }
}
