package com.itwill.spring2.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.service.PostService;
import com.itwill.spring2.web.PostController;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor 
@RequestMapping("/admin") 
@Controller 
public class AdminController extends HttpServlet {
	@GetMapping("/main")
    public String map(Model model, HttpServletRequest request) {
        log.info("map()");
        
HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		model.addAttribute("username",username);
		
        return "/admin/main";
    }
}
