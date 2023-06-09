package com.itwill.spring2.web.bookmark;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.domain.Bookmark;
import com.itwill.spring2.domain.User;
import com.itwill.spring2.service.BookmakrService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController

@RequestMapping("/bookmark")
@Controller
public class BookmarkController {
    
    HashMap<String, Object> data = new HashMap<>();
    
    @Autowired
    BookmakrService bookmarkService;
    
    // 게시글 북마크 등록
    @PostMapping("/mypage")
    public HashMap<String, Object> bookmarkOn(Bookmark param, HttpSession session){
        User sessionUser = (User) session.getAttribute("sessionUser");
        if(sessionUser == null) {
            data.put("result", "error");
            data.put("reason","로그인이 필요합니다.");
            return data;
        }
       
        long user_id = sessionUser.getId();
        int mybookmark = bookmarkService.MyBookmark(param);
        
        if (mybookmark > 0) {
            data.put("status", "bookMark");
        } else {
            data.put("status", "unBookMark");
        }
        
        param.setUser_id(user_id);
        data.put("result", "success");
        
        bookmarkService.MyBookmark(param);
        return data;
    }
}
