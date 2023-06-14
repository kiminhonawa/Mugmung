package com.itwill.spring2.web.bookmark;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.domain.Bookmark;
import com.itwill.spring2.domain.User;
import com.itwill.spring2.service.BookmarkService;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class BookmarkController {
    
    HashMap<String, Object> data = new HashMap<>();
    
    @Autowired
    BookmarkService bookmarkService;
    
    // 게시글 북마크 등록
    @PostMapping("/bookmark/mypage")
    public HashMap<String, Object> bookmarkOn(Bookmark param, HttpSession session){
        User sessionUser = (User) session.getAttribute("sessionUser");
        if(sessionUser == null) {
            data.put("result", "error");
            data.put("reason","로그인이 필요합니다.");
            return data;
        }
       
        long user_id = sessionUser.getId();
        param.setUser_id(user_id);
        
        int mybookmark = bookmarkService.MyBookmark(param);
        
        if (mybookmark > 0) {
            data.put("status", "bookMark");
            data.put("result", "success");
        } else {
            data.put("status", "unBookMark");
            data.put("result", "failed");
        }
        
        
        return data;
    }
}
