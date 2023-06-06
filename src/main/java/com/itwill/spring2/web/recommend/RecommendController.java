package com.itwill.spring2.web.recommend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.customer.CustomerController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/recommend") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class RecommendController {
	@GetMapping("/analysis")
    public String analysis() {
        log.info("analysis()");
        
        return "/recommend/analysis";
    }
	@GetMapping("/goldenbell")
    public String goldenbell() {
        log.info("goldenbell()");
        
        return "/recommend/goldenbell";
    }
	@GetMapping("/wordcup")
    public String wordcup() {
        log.info("wordcup()");
        
        return "/recommend/wordcup";
    }
	
}
