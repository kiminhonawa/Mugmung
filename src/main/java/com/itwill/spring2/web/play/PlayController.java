package com.itwill.spring2.web.play;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.web.blog.BlogController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/play")
@Controller
public class PlayController {
	@GetMapping("/play")
    public String play() {
        log.info("play()");
        
        return "/play/play";
    }
}
