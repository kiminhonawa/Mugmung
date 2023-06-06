package com.itwill.spring2.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.domain.User;
import com.itwill.spring2.dto.PostCreateDto;
import com.itwill.spring2.service.PostService;
import com.itwill.spring2.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/join")
@Controller
public class SignUpController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/signup")
    public String signup() {
        log.info("GET: signup()");
        
        return "/join/signup";
    }
}
