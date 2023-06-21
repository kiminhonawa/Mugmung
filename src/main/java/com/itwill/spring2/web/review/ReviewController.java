package com.itwill.spring2.web.review;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
        log.info("username = {}", username);

        model.addAttribute("username", username);

        model.addAttribute("name", name);
    }

    // 사진업로드
    @PostMapping("/review")
    public String makgora(@RequestParam("file") MultipartFile file) throws Exception {
        String fileName = file.getOriginalFilename();
        log.info("fileName = {}", fileName);
        // Generate a random file name.
        String randomFileName = UUID.randomUUID().toString() + "_" + fileName;
        log.info("randomFileName = {}", randomFileName);
        // Create a new file in the C:/mugmung/img/title path.
        File newFile = new File(new File("C:/upload/temp"), randomFileName);
        log.info("newFile = {}", newFile);
        // Write the file to the disk.
        file.transferTo(newFile);
        // Redirect the user back to the upload page.
        return "/review/review";

    }

    // 저장버튼
    @PostMapping("/save")
    public String save(HttpServletRequest request,
            @RequestParam(value = "rating", required = false) List<Integer> ratings,
            @RequestParam("content") String content, @RequestParam("restaurant_id") long restaurant_id) {

        if (ratings != null) {
            for (Integer rating : ratings) {
                log.info("별점: {}", rating);
            }
        }
        log.info("rating : {}", ratings.get(ratings.size() - 1));
        log.info("content : {}", content);
        log.info("restaurant_id : {}", restaurant_id);

        HttpSession session = ((HttpServletRequest) request).getSession();

        String username = (String) session.getAttribute("signedInUser");

        PostReviewDto dto = PostReviewDto.builder().restaurant_id(restaurant_id)
                .star_score(ratings.get(ratings.size() - 1)).reply_text(content).writer(username).build();

        int result = reviewService.save(dto);

        return "redirect:/detail/detail?id=" + restaurant_id;
    }

    
      //취소버튼
      
      @PostMapping("/cancel") 
      public String cancel (){ 
          log.info("cancel");
      
      return "redirect:/"; }
     

    // 임시저장

}
