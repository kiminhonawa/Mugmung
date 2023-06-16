package com.itwill.spring2.web.user;

import java.io.File;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String signup(@RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date birth_day, SignUpInfoDto dto ) {
        log.info("Post: signup(birth_day={})",birth_day);
        log.info("Post: signup(user={})",dto);
        
        User user = User.builder().username(dto.getUsername()).password(dto.getPassword()).email(dto.getEmail()).gender(dto.getGender()).birth_day(birth_day.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime()).build();
        
        log.info("user={}",user);
        
        user.setUser_image("C:\\workspace\\spring2\\src\\main\\webapp\\static\\img\\"+dto.getUser_image());
        
        log.info("_img={}",user.getUser_image());
        
        int result = userService.create(user);
        
//        C:\mugmung\img\title\free-icon-hallabong-8353318.png
        
        
        
        log.info("result={}",result);
        
        return "redirect:/";
    }
}
