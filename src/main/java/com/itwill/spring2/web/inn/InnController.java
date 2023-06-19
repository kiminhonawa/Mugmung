package com.itwill.spring2.web.inn;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.InnPlayListDto;
import com.itwill.spring2.service.BestListService;
import com.itwill.spring2.service.InnPlayService;
import com.itwill.spring2.web.blog.BlogController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/home")
@Controller
public class InnController {
	
	private final InnPlayService innPlayService;
	
	@GetMapping("/inn")
    public String inn(Model model) {
        log.info("inn()");
        
        List<InnPlayListDto> list = innPlayService.read();
        
        model.addAttribute("innLists", list);
        
        return "/home/inn";
    }
}
