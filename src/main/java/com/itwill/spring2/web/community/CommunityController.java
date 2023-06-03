package com.itwill.spring2.web.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.recommend.RecommendController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/community") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class CommunityController {
	@GetMapping("/announce")
    public String announcement() {
        log.info("announcement()");
        
        return "/community/announce";
    }
	@GetMapping("/capture")
    public String capture() {
        log.info("capture()");
        
        return "/community/capture";
    }
	@GetMapping("/review")
    public String reviewlist() {
        log.info("reviewlist()");
        
        return "/community/review";
    }
}
