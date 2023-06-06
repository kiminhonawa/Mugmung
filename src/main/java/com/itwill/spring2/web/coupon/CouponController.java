package com.itwill.spring2.web.coupon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.blog.BlogController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/coupon")
@Controller
public class CouponController {
	@GetMapping("/coupon")
    public String coupon() {
        log.info("coupon()");
        
        return "/coupon/coupon";
    }
}
