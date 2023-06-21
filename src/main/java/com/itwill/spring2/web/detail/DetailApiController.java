package com.itwill.spring2.web.detail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.DetailCreateDto;
import com.itwill.spring2.dto.ReplyCreateDto;
import com.itwill.spring2.service.BookmarkService;
import com.itwill.spring2.service.MyPageService;
import com.itwill.spring2.service.ReplyService;
import com.itwill.spring2.web.mypage.MypageApiController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/api/detail") 
@RestController
public class DetailApiController {
	
	@Autowired
	private BookmarkService bookmarkService;
	
	@PostMapping
    public ResponseEntity<Integer> createDetail(@RequestBody DetailCreateDto dto) {
        log.info("DetailCreateDto(dto={})", dto);
        
        int result = bookmarkService.insert(dto);
        
        return ResponseEntity.ok(result);
    }
	
	@DeleteMapping("/{id}/{username}")
    public ResponseEntity<Integer> deleteReply(@PathVariable Long id, @PathVariable String username) {
        log.info("DetailCreateDto(username={})", username);
        log.info("DetailCreateDto(id={})", id);
         
        DetailCreateDto dto = new DetailCreateDto( id , username);
        
        int result = bookmarkService.delete(dto);
        
        return ResponseEntity.ok(200);
    }
	
}
