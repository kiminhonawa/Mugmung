package com.itwill.spring2.web.best;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.BestListDto;
import com.itwill.spring2.dto.IndexListDto;
import com.itwill.spring2.service.BestListService;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/best")
@Controller
public class BestController {
	
	private final BestListService bestListService;
	
	
	@GetMapping("/best")
    public String best(Model model) {
        log.info("best()");
        
        List<IndexListDto> list = bestListService.read();
         
        model.addAttribute("bestLists", list);
        
        return "/best/best";
    } 
	
	
}
