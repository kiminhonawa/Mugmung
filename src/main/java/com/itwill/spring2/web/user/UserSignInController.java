package com.itwill.spring2.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.domain.User;
import com.itwill.spring2.service.UserService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

/**
 * Servlet implementation class UserSignInController
 */
@Slf4j
@RequestMapping("/user")
@Controller
public class UserSignInController extends HttpServlet {
	
	@Autowired
	private UserService userService;
    
	@GetMapping("/signin")
    public String signin() {
        log.info("signin()");
        
        return "/user/signin";
    }
	

	@PostMapping("/signin")
    public String signin(User user, HttpServletRequest request) {
        log.info("signin(user={})", user);
        
     // 요청 파라미터에 포함된 username과 password를 읽음.
		String username = user.getUsername();
		String password = user.getPassword();
        
		User result = userService.signIn(user);
		if (result == null) { // username 또는 password가 일치하지 않는 경우 - 로그인 실패
		    return "redirect:/user/signin"; // doPost 메서드 종료
		}
		// 로그인 성공
		// (1) 세션(session)에 로그인 정보를 저장.
		HttpSession session = request.getSession(); // 세션 객체 찾기
		session.setAttribute("signedInUser", user.getUsername()); // 세션 객체에 로그인 username만 저장.
		
		return "/mugmung/";
	}
	
}