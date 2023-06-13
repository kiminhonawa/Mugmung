package com.itwill.spring2.web.user;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.spring2.dto.SignUpInfoDto;
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
	
	@PostMapping("/signup")
	public String signup(@RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date birth_day) {
        log.info("Post: signup(signUpInfoDto={})",birth_day);
        
//        int result = userService.create(user);
        
        return "redirect:/";
    }
}
