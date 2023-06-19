package com.itwill.spring2.web.review;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.spring2.web.PostController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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
    public void review(@RequestParam("id") Long id, Model model, HttpServletRequest request) {
        log.info("GET: review()");
        
        HttpSession session = ((HttpServletRequest) request).getSession();
        
        
        // 레스토랑 테이블에서 레스토랑 이름
        String name = reviewService.readNameById(id);
        
        String username = (String) session.getAttribute("signedInUser");
        log.info("username = {}",username);
        
        model.addAttribute("username", username);
        
        model.addAttribute("name", name);
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
    public String save(@RequestParam List<Integer> rating, PostReviewDto dto) {
        log.info("Review asdfasdf= {}", dto);
        //아이디 넘기기 
        
        for(Integer i : rating) {
            log.info("라디오 버튼 : i={}",i);
        }
        
        long id = dto.getId();
        
        int result = reviewService.save(dto);
        
        return "/mugmung/detail/detail?id="+id;
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
