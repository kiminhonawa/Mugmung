package com.itwill.spring2.web.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.ReviewDto;
import com.itwill.spring2.service.AdminReviewService;
import com.itwill.spring2.service.PostService;
import com.itwill.spring2.web.PostController;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/admin") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class AdminReviewController extends HttpServlet{
	
	@Autowired
	private AdminReviewService adminReviewService;
	
	
	@GetMapping("/main/review")
    public String review(HttpServletRequest request, Model model) {
        log.info("review()");
        
        
        HttpSession session = ((HttpServletRequest) request).getSession();
        
        String username = (String) session.getAttribute("signedInUser");
        log.info("username = {}",username);

        
    // 리뷰 데이터    
        List<ReviewDto> list = adminReviewService.read(username);
        log.info("list{}",list);
        
        model.addAttribute("lists", list);
        
        
        return "/admin/review";
    }
	
}
