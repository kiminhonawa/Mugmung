package com.itwill.spring2.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwill.spring2.dto.IndexListDto;
import com.itwill.spring2.dto.PostListDto;
import com.itwill.spring2.service.IndexService;
import com.itwill.spring2.service.PostService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class HomeController {
	
	private final IndexService indexService;
	
	@GetMapping("/")
    public String map() {
        log.info("map()");
        
        return "/map/mugmap";
    }
    
    @GetMapping("/main")
    public String home(Model model) {
        log.info("home()");
            
        //List<IndexListDto> list = indexService.read();
        
        // 뷰에 보여줄 데이터를 Model에 저장.
        //model.addAttribute("posts", list);
        
        return "/main/index";
    }
    
    
    
    
    
    
    
    @GetMapping("/test")
    public String test() {
        log.info("test()");
        
        return "/test";
    }

}
