package com.itwill.spring2.web.user;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.spring2.domain.User;
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
	public String signup(@RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date birth_day, SignUpInfoDto dto) {
        log.info("Post: signup(birth_day={})",birth_day);
        log.info("Post: signup(user={})",dto);
        
        User user = User.builder().username(dto.getUsername()).password(dto.getPassword()).email(dto.getEmail()).gender(dto.getGender()).birth_day(birth_day.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime()).build();
        
        log.info("userasdasdfasdf={}",user);
        
        birth_day.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
        
        int result = userService.create(user);
        
        log.info("result={}",result);
        
        log.info("result={}",result);
        
        return "redirect:/";
    }
}
