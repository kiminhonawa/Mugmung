package com.itwill.spring2.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.domain.User;
import com.itwill.spring2.dto.ReplyReadDto;
import com.itwill.spring2.service.ReplyService;
import com.itwill.spring2.service.UserService;
import com.itwill.spring2.web.ReplyController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/join")
public class SignUpApiController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/confirm/{username}")
    public ResponseEntity<User> readById(@PathVariable String username) {
        log.info("readById(username={})", username);
        
        User dto = userService.confirmId(username);
        log.info("dto={}", dto);
        
        return ResponseEntity.ok(dto);
    }
}
