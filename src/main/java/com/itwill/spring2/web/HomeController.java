package com.itwill.spring2.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwill.spring2.domain.Criteria;
import com.itwill.spring2.domain.PageDto;
import com.itwill.spring2.dto.IndexListDto;
import com.itwill.spring2.service.IndexService;

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
    public String home(Model model, Criteria cri, String id) {
        log.info("home()");
        log.info("id({})", id);
          
        List<IndexListDto> list = indexService.read(id);
        
        log.info("listaslkdfjalsdkf = {}",list);
        
        // 뷰에 보여줄 데이터를 Model에 저장.
        cri.setId(id);
        model.addAttribute("indexLists", list=indexService.read(cri));
        model.addAttribute("pageMaker", new PageDto(cri, 10));
        
        return "/main/index";
    }
    
    
    
    
    
    
    
    @GetMapping("/test")
    public String test() {
        log.info("test()");
        
        return "/test";
    }

}
