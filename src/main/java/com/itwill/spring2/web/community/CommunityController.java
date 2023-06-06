package com.itwill.spring2.web.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.dto.PostCreateDto;
import com.itwill.spring2.dto.PostDetailDto;
import com.itwill.spring2.dto.PostListDto;
import com.itwill.spring2.dto.PostUpdateDto;
import com.itwill.spring2.service.PostService;
import com.itwill.spring2.web.recommend.RecommendController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/community") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class CommunityController {
	
	@Autowired
	private final PostService postService; // 생성자에 의한 의존성 주입.
	
	/**
	 * 공지사항 게시판 리스트 노출
	 */
	@GetMapping("/announce/announcelist")
    public void announcelist() {
        log.info("announcement()");
    }
	
	/**
	 * 사진 게시판 리스트 노출
	 */
	@GetMapping("/capture/capturelist")
    public void capturelist() {
        log.info("capturelist()");
    }

// 리뷰 시작
	/**
	 * 리뷰 게시판 리스트 노출
	 * @param model
	 */
	@GetMapping("/review/reviewlist")
	public void reviewlist(Model model) {
		log.info("reviewlist()");
		// 컨트롤러는 서비스 계층의 메서드를 호출해서 서비스 기능을 수행.
		List<PostListDto> list = postService.read();
		
		// 뷰에 보여줄 데이터를 Model에 저장.
		model.addAttribute("posts", list);
	}
	
	/** 리뷰 게시판 게시물 생성 페이지 get*/
	@GetMapping("/review/reviewcreate")
    public void reviewcreate() {
        log.info("GET: create()");
    }
	
	/** 리뷰 게시판 게시물 생성 post*/
	@PostMapping("/review/reviewcreate")
    public String reviewcreate(PostCreateDto dto) {
        log.info("POST: reviewcreate({})", dto);
        
        // 서비스 계층의 메서드를 호출 - 새 포스트 등록
        int result = postService.create(dto);
        log.info("포스트 등록 결과 = {}", result);
        
        // Post - Redirect - Get
        return "redirect:/community/review/reviewlist";
    }
	
	/** 리뷰 게시판 게시물 상세 페이지 get*/
	@GetMapping("/review/reviewdetail")
    public void detail(long id, Model model) {
        log.info("detail(id={})", id);
        
        // 서비스 계층의 메서드를 호출해서 화면에 보여줄 PostDetailDto를 가져옴.
        PostDetailDto dto = postService.read(id);
        
        // 뷰에 PostDetailDto를 전달.
        model.addAttribute("post", dto);
    }
	
	/** 리뷰 게시판 게시물 수정 페이지 get*/
	@GetMapping("/review/reviewmodify")
    public void modify(long id, Model model) {
        log.info("modify(id={})", id);
        
        PostDetailDto dto = postService.read(id);
        model.addAttribute("post", dto);
    }
	
	/** 리뷰 게시판 게시물 상세 페이지 삭제하기 post*/
	@PostMapping("/review/delete")
    public String delete(long id) {
        log.info("delete(id={})", id);
        
        int result = postService.delete(id);
        log.info("삭제 결과 = {}", result);
        
        return "redirect:/community/review/reviewlist";
    }
	
	/** 리뷰 게시판 게시물 수정 하기 post*/
	@PostMapping("/review/update")
    public String update(PostUpdateDto dto) {
        log.info("update(dto={})", dto);
        
        int result = postService.update(dto);
        log.info("업데이트 결과 = {}", result);
        
        return "redirect:/community/review/reviewlist"; // "redirect:/post/detail?id=" + dto.getId();
    }
// review 끝	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
