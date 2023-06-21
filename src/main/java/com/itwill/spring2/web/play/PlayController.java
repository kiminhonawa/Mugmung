package com.itwill.spring2.web.play;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.InnPlayListDto;
import com.itwill.spring2.service.PlayService;
import com.itwill.spring2.web.blog.BlogController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/play")
@Controller
public class PlayController {
	
	private final PlayService playService;
	
	@GetMapping("/play")
    public String play(Model model) {
        log.info("play()");
        
        List<InnPlayListDto> list = playService.read();
        
        model.addAttribute("playLists", list);
        
        return "/play/play";
    }
}
