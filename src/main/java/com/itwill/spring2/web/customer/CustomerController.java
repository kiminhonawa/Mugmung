package com.itwill.spring2.web.customer;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.spring2.dto.PartnershipDto;
import com.itwill.spring2.service.PartnershipService;
import com.itwill.spring2.service.PostService;
import com.itwill.spring2.web.PostController;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/customer") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.

public class CustomerController extends HttpServlet {
	
	@GetMapping("/makgora")
    public String makgoraPost() {
        log.info("makgora()");
        
        return "/customer/makgora";
    }
	
	@PostMapping("/makgora")
    public String makgora(@RequestParam("file") MultipartFile file) throws Exception {
        log.info("post makgora()");
        
     // Get the file name.
        String fileName = file.getOriginalFilename();
        log.info("fileName = {}",fileName);
        // Generate a random file name.
        String randomFileName = UUID.randomUUID().toString() + "_" + fileName;
        log.info("randomFileName = {}",randomFileName);
        // Create a new file in the C:/mugmung/img/title path.
        File newFile = new File(new File("C:/mugmung/img/title"), randomFileName);
        log.info("newFile = {}",newFile);
        // Write the file to the disk.
        file.transferTo(newFile);

        // Redirect the user back to the upload page.
        
        return "redirect:/main";
    }
	
	@GetMapping("/faqs")
    public String faqs() {
        log.info("faqs()");
        
        return "/customer/faqs";
    }
	
	
	// 제휴
	private final PartnershipService partnershipService;
	
	@GetMapping("/partnership")
    public void partnership(Model model, HttpServletRequest request) {
        log.info("GET: partnership()");
        HttpSession session = ((HttpServletRequest) request).getSession();

        String username = (String) session.getAttribute("signedInUser");
        log.info("username = {}", username);

        model.addAttribute("username", username);
        
    }
	
	@PostMapping("/partnership")
	public String partnership1(PartnershipDto dto) {
	    log.info("POST: partnershipPost({})", dto);
	    
	    int result = partnershipService.create(dto);
	    log.info("제휴하기 등록 결과 = {}", result);
	    
	    return "redirect:/mugmung/main";
	}
	
	
	
	// 제안
	@GetMapping("/proposal")
    public String proposal() {
        log.info("proposal()");
        
        return "/customer/proposal";
    }
	
	@PostMapping("/proposal")
	public String proposal1() {
	    log.info("proposalPost()");
	    
	    return "redirect:/mugmung/main";
	}
}
