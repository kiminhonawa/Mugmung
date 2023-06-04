package com.itwill.spring2.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.PostCreateDto;
import com.itwill.spring2.service.PostService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/join")
@Controller
public class SignUpController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/signup")
    public String signup() {
        log.info("GET: signup()");
        
        return "/join/signup";
    }
    
//    @PostMapping("/signup")
//    public String signup(UserCreateDto dto) {
//        log.info("POST: signup({})", dto);
//        
//        // 서비스 계층의 메서드를 호출 - 새 포스트 등록
//        int result = postService.create(dto);
//        log.info("포스트 등록 결과 = {}", result);
//        
//        // Post - Redirect - Get
//        return "redirect:/post/list";
//    }
}
