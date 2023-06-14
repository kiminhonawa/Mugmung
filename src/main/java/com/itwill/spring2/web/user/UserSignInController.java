package com.itwill.spring2.web.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

import java.io.Console;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.domain.User;
import com.itwill.spring2.service.UserService;

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
//	        throws ServletException, IOException {
//		log.info("doPost()");
//		
//		// 요청 파라미터에 포함된 username과 password를 읽음.
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		
//		// Service 계층의 메서드를 호출해서 로그인 성공/실패 여부를 판단.
//		User user = userService.signIn(username, password);
//		log.info("로그인 결과: {}", user);
//		
//		if (user == null) { // username 또는 password가 일치하지 않는 경우 - 로그인 실패
//		    // 로그인 페이지로 이동(redirect)
//		    response.sendRedirect("/post/user/signin");
//		    // /context-root/path?query-string
//		    
//		    return; // doPost 메서드 종료
//		}
//		
//		// 로그인 성공
//		// (1) 세션(session)에 로그인 정보를 저장.
//		HttpSession session = request.getSession(); // 세션 객체 찾기
//		session.setAttribute("signedInUser", user.getUsername()); // 세션 객체에 로그인 username만 저장.
//		
//		// (2) 적절한 페이지로 이동. -> 메인 페이지로 이동.
//		response.sendRedirect("/post");
//	}
	
	@PostMapping("/signin")
    public String signin(User user, HttpServletRequest request, HttpServletResponse response) {
        log.info("post signin(user={})", user);
        
        User result = userService.signIn(user);
        log.info("일치 결과 = {}", result);
        
        if (result == null) { // username 또는 password가 일치하지 않는 경우 - 로그인 실패
		    // 로그인 페이지로 이동(redirect)
		    log.info("로그인 실패");
		    return "redirect:/user/signin";
		} else {
			log.info("로그인 성공");
			// 로그인 성공
			// (1) 세션(session)에 로그인 정보를 저장.
			HttpSession session = request.getSession(); // 세션 객체 찾기
			session.setAttribute("signedInUser", user.getUsername()); // 세션 객체에 로그인 username만 저장.
			
			// 호출한 페이지로 세션 가지고 이동
			return "redirect:/";
		}
        
        
        
        
        
    }

}