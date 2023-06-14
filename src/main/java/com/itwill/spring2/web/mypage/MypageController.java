package com.itwill.spring2.web.mypage;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.MyPagePurchasedDto;
import com.itwill.spring2.service.MyPageService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/mypage") 
@Controller 
public class MypageController extends HttpServlet{
	
	private final MyPageService myPageService;
	
	@GetMapping("/mypage")
	public String mypage(Model model, HttpServletRequest request) {
		log.info("mypage");
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MyPagePurchasedDto> list = myPageService.readPurchaseByUsername(username);
		
		model.addAttribute("lists", list);
		
		log.info("list={}",list);
		
		return "/mypage/mypage";
	}
	
	
	@GetMapping("/purchased")
	public ResponseEntity<List<MyPagePurchasedDto>> purchased(HttpServletRequest request) {
		
		log.info("get reviewed");
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MyPagePurchasedDto> list = myPageService.readPurchaseByUsername(username);
        log.info("# of replies = {}", list.size());
		
		return ResponseEntity.ok(list);
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
