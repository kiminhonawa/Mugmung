package com.itwill.spring2.web.special;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.ReplyReadDto;
import com.itwill.spring2.dto.SpecialPostDto;
import com.itwill.spring2.service.ReplyService;
import com.itwill.spring2.service.SpecialPostService;
import com.itwill.spring2.web.ReplyController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/special")
public class SpecialApiController {

	@Autowired
	private SpecialPostService postService;
	
	@GetMapping("/all/{id}")
    public ResponseEntity<List<SpecialPostDto>> read(@PathVariable String id) {
        log.info("read(id={})", id);
        
        List<SpecialPostDto> list = postService.read(id);
        log.info("# of replies = {}", list.size());
        
        return ResponseEntity.ok(list);
    }
	
}
