package com.itwill.spring2.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.MakgoraDto;
import com.itwill.spring2.service.MakgoraService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/customer")
@Controller
public class MakgoraController extends HttpServlet {

	private final MakgoraService makgoraService;
	
	
	@GetMapping("/makgora")
    public void create() {
        log.info("makgora()");
        
    }
	
//	@PostMapping("/makgora")
//	public String create(MakgoraDto dto, Model model, HttpServletRequest request) {
//		log.info("POST: create({})", dto);
//		
//		HttpSession session = ((HttpServletRequest) request).getSession();
//		
//		String username = (String) session.getAttribute("signedInUser");
//		log.info("username = {}",username);
//		
//		model.addAttribute("username", username);
//		
//		dto.setWriter(username);
//		dto.setMakgora_image_id(username);
//		
//		int result = makgoraService.create(dto);
//		log.info("1:1문의 결과={}", result);
//		return "redirect:/mugmung/main";
//
//	}
}
