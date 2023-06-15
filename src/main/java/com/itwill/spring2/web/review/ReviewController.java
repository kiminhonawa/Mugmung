package com.itwill.spring2.web.review;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.spring2.web.PostController;
import com.itwill.spring2.dto.PostReviewDto;
import com.itwill.spring2.dto.ReviewDto;
import com.itwill.spring2.service.PostService;
import com.itwill.spring2.service.ReviewService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor
@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;
    
    @GetMapping("/review") 
    public void review() {
        log.info("GET: review()");
    }
    
    @PostMapping("/review")
    public String makgora(@RequestParam("file") MultipartFile file) throws Exception {
        String fileName = file.getOriginalFilename();
    log.info("fileName = {}",fileName);
    // Generate a random file name.
    String randomFileName =UUID.randomUUID().toString() + "_" + fileName;
    log.info("randomFileName = {}",randomFileName);
    // Create a new file in the C:/mugmung/img/title path.
    File newFile = new File(new File("C:/upload/temp"), randomFileName);
    log.info("newFile = {}",newFile);
    // Write the file to the disk.
    file.transferTo(newFile);
    // Redirect the user back to the upload page.
    return "/review/review";

    }
    
    @PostMapping("/save")
    public String save(ReviewDto dto) {
        log.info("Review asdfasdf= {}", dto);
        
//        int result = reviewService.save(dto);
        
        return "/mugmung/detail/detail";
    }
    /*
     * @PostMapping("/delete") public String delete(long id) {
     * log.info("delete(id={}", id);
     * 
     * int result = PostService log.info("삭제 결과 = {}", result);
     * 
     * return "redirect:/review/review"; }
     */
    
    
}
