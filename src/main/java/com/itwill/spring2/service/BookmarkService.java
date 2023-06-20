package com.itwill.spring2.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;


import com.itwill.spring2.dto.BookmarkDto;
import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.repository.BookmarkRepository;
import com.itwill.spring2.repository.PostRepository;
import com.itwill.spring2.repository.UserRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class BookmarkService {

    private final BookmarkRepository bookmarkRepository;
    private final UserRepository userRepository;
    
    
    
    // 게시글 북마크 등록
    public List<RestaurantDto> bookmarkOn(long id, String username) {
        log.info("bookmarkOn(id={}, username={})", id, username);
        
        // 북마크 등록
        bookmarkRepository.BookmarkOn(id, username);
        
        // 북마크 상태 조회
        long bookmarkStatus = bookmarkRepository.MyBookmark(id, username); 
        
        List<RestaurantDto> list = new ArrayList<>();
        
        
        if(bookmarkStatus > 0) {
            bookmarkRepository.BookmarkOff(id, username); // 북마크 취소
        } else {
            list = bookmarkRepository.BookmarkOn(id, username); // 북마크 등록 후 목록 조회
        }
                
        return list;
    }
    
    
    
//    public void bookmarkOn(BookmarkDto param) {
//        int myBookmark = MyBookmark(param);
//        if(myBookmark > 0) {
//            bookmarkRepository.BookmarkOff(param.getRestaurant_id(), param.getUsername());
//        } else {
//            bookmarkRepository.BookmarkOn(param);
//        }
//    }

    
    
    
//    public int MyBookmark(BookmarkDto param) {
//        return bookmarkRepository.MyBookmark(param);
//    }

}
