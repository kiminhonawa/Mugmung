package com.itwill.spring2.web.mypage;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.MakgoraDto;
import com.itwill.spring2.dto.MyPageBookmarkedDto;
import com.itwill.spring2.dto.MyPagePurchasedDto;
import com.itwill.spring2.dto.MyPageReviewedDto;
import com.itwill.spring2.dto.MyPageStarScoreDto;
import com.itwill.spring2.dto.ReplyReadDto;
import com.itwill.spring2.service.MyPageService;
import com.itwill.spring2.service.PostService;
import com.itwill.spring2.service.ReplyService;
import com.itwill.spring2.web.PostController;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/mypage/api") 
@RestController 
public class MypageApiController extends HttpServlet{
	
	private final ReplyService replyService;
	
	private final MyPageService myPageService;
	
//    구매한 상품 - purchased
//    리뷰한 상품 - reviewed
//    북마크 보기 - bookmarked
//    별점보기 - starscore
//    문의한 내용 - makgora
//    
	/*
	 * @GetMapping("/mypage") public ResponseEntity<Integer> mypage() {
	 * log.info("get reviewed");
	 * 
	 * return ResponseEntity.ok(1); }
	 */
	

	@GetMapping("/purchased")
	public ResponseEntity<List<MyPagePurchasedDto>> purchased(HttpServletRequest request) {
		
		log.info("get reviewed");
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MyPagePurchasedDto> list = myPageService.readPurchaseByUsername(username);
        log.info("# of replies = {}", list.size());
		
		return ResponseEntity.ok(list);
		
	}
	
	@GetMapping("/reviewed")
	public ResponseEntity<List<MyPageReviewedDto>> reviewed(HttpServletRequest request) {
		log.info("get reviewed");
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MyPageReviewedDto> list = myPageService.readReviewByUsername(username);
        log.info("# of replies = {}", list.size());
		
		return ResponseEntity.ok(list);
	}
	@GetMapping("/bookmarked")
	public ResponseEntity<List<MyPageBookmarkedDto>> bookmarked(HttpServletRequest request) {
		log.info("get bookmarked");

		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MyPageBookmarkedDto> list = myPageService.readBookmarkedByUsername(username);
        log.info("# of replies = {}", list.size());
		
		return ResponseEntity.ok(list);
	}
	
	@GetMapping("/starscore")
	public ResponseEntity<List<MyPageStarScoreDto>> starscore(HttpServletRequest request) {
		log.info("get starscore");
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MyPageStarScoreDto> list = myPageService.readStarscoreByUsername(username);
        log.info("# of replies = {}", list.size());
		
		return ResponseEntity.ok(list);
	}
	@GetMapping("/makgora")
	public ResponseEntity<List<MakgoraDto>> makgora(HttpServletRequest request) {
		log.info("get MakgoraDto");
		
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		List<MakgoraDto> list = myPageService.readMakgoraByUsername(username);
        log.info("# of replies = {}", list.size());
		
		return ResponseEntity.ok(list);
	}
	
}
