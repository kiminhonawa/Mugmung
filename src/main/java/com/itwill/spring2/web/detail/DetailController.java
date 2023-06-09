package com.itwill.spring2.web.detail;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.web.best.BestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/detail")
@Controller

public class DetailController {
 // 페이지 클릭 시, 상세보기 페이지
    @GetMapping("/detail")
    public String detail() {
        log.info("detail()");
        
      
        return "/detail/detail";
    }
}
