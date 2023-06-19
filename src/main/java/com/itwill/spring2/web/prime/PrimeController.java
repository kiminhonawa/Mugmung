package com.itwill.spring2.web.prime;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.PrimeDto;
import com.itwill.spring2.service.PrimeService;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/prime")
@Controller
public class PrimeController {
	

	private final PrimeService primeService;
	
	@GetMapping("/prime")
    public String prime(Model model) {
        log.info("prime()");
        
        List<PrimeDto> list = primeService.read();
        
        log.info("list={}", list);
        
        model.addAttribute("primeLists", list);
        
        return "/prime/prime";
	}
}
