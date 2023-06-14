package com.itwill.spring2.web.detail;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.PostReviewDto;

import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.service.PostReviewService;
import com.itwill.spring2.service.RestaurantService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/detail")
@RequiredArgsConstructor
@Controller
public class DetailController {
    
    private final RestaurantService restaurantService;
    private final PostReviewService postReviewService;
    
    // 페이지 클릭 시, 상세보기 페이지
    @GetMapping("/detail")
    public void detail(@RequestParam("id") Long id, Model model) {
        log.info("detail()", id);
        
            RestaurantDto dto = restaurantService.read(id);
            model.addAttribute("detail", dto); 
    }   
        
    // 작성된 리뷰 불러오기
//    @GetMapping("/review/{restaurant_id}")
//    public ResponseEntity<List<PostReviewDto>> read(@PathVariable long restaurant_id){
//        log.info("read(restaurant_id={})", restaurant_id);
//        
//        List<PostReviewDto> list = postReviewService.read(restaurant_id);
//        log.info("# of replies={}", list.size());
//        
//        return ResponseEntity.ok(list);
//    }
    
    // 지도 불러오기
    
      
        
    
}
