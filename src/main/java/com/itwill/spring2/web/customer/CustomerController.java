package com.itwill.spring2.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.itwill.spring2.service.PostService;
import com.itwill.spring2.web.PostController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/customer") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class CustomerController {
	@GetMapping("/faqs")
    public String faqs() {
        log.info("faqs()");
        
        return "/customer/faqs";
    }
	@GetMapping("/makgora")
    public String makgora() {
        log.info("makgora()");
        
        return "/customer/makgora";
    }
	@GetMapping("/partnership")
    public String partnership() {
        log.info("partnership()");
        
        return "/customer/partnership";
    }
	
	@PostMapping("/partnership")
	public String partnership1() {
	    log.info("partnershipPost()");
	    return "redirect:/main";
	}
	
	@GetMapping("/proposal")
    public String proposal() {
        log.info("proposal()");
        
        return "/customer/proposal";
    }
}
