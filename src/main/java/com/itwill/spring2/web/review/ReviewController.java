package com.itwill.spring2.web.review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.PostController;
import com.itwill.spring2.dto.PostReviewDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@Controller
@RequestMapping("/review")
public class ReviewController {

    
    @GetMapping("/review") //왜? GET도 하고 POST도 함??
    public void review() {
        log.info("GET: review()");
    }
    
    @PostMapping("/review") //submit 제출해야되니까
    public String review(PostReviewDto dto) {
        log.info("POST: review()", dto);
        
        return "/review/review";
    }
    
}
