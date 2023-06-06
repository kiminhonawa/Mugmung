package com.itwill.spring2.web.inn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.blog.BlogController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/home")
@Controller
public class InnController {
	@GetMapping("/inn")
    public String inn() {
        log.info("inn()");
        
        return "/home/inn";
    }
}
