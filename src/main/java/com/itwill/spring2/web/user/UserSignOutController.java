package com.itwill.spring2.web.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet implementation class UserSignOutController
 */
@Slf4j
@RequestMapping("/user")
@Controller
public class UserSignOutController extends HttpServlet {
	
	@GetMapping("/signout")
    public String signout(HttpServletRequest request) {
        log.info("signout()");
        
     // Request 객체에서 Session 정보를 찾음.
 		HttpSession session = request.getSession();
     		
 		session.invalidate(); // 세션을 무효화 - 지움. -> 로그아웃
        
        return "redirect:/user/signin";
    }

}
