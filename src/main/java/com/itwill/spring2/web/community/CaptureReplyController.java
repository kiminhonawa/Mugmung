package com.itwill.spring2.web.community;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.CaptureReplyCreateDto;
import com.itwill.spring2.dto.CaptureReplyReadDto;
import com.itwill.spring2.service.CaptureReplyService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/community")
public class CaptureReplyController {
    
    private final CaptureReplyService captureReplyService;
    
    @PostMapping
    public ResponseEntity<Integer> createReply(@RequestBody CaptureReplyCreateDto dto) {
        log.info("captureCreateReply(dto={})", dto);
        
        int result = captureReplyService.create(dto);
        
        return ResponseEntity.ok(result);
    }
   
    @GetMapping("/all/{capture_id}")
    public ResponseEntity<List<CaptureReplyReadDto>> read(@PathVariable long capture_id) {
        log.info("read(postId={})", capture_id);
        
        List<CaptureReplyReadDto> list = captureReplyService.read(capture_id);
        log.info("# of replies = {}", list.size());
        
        return ResponseEntity.ok(list);
    }
    
    
    
    
}



