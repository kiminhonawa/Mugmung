package com.itwill.spring2.web.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.CaptureCreateDto;
import com.itwill.spring2.service.CaptureService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/community")
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class CaptureController {

    private final CaptureService captureService;
    
    @GetMapping("/capture/capturecreate")
    public void create( ) {
        
        log.info("GET: create()");
        
    }
    
    @PostMapping("/capture/capturecreate")
    public String create(CaptureCreateDto dto) {
        log.info("POST: create({})", dto);
        
        int result = captureService.create(dto);
        log.info("사진게시판 등록 결과 = {}", result);
        
        return "redirect:/community/review/capturelist";
        
        
    }
    
    
}
