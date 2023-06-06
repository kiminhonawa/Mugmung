package com.itwill.spring2.web.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/blog")
@Controller
public class BlogController {
    @GetMapping("/day")
    public String day() {
        log.info("day()");
        
        return "/blog/day";
    }
    @GetMapping("/month")
    public String month() {
        log.info("month()");
        
        return "/blog/month";
    }
    
}
