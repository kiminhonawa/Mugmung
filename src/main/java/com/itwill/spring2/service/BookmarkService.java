package com.itwill.spring2.service;

import org.springframework.stereotype.Service;


import com.itwill.spring2.dto.BookmarkDto;
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
    private final PostRepository postRepository;
    
    
    
    // 게시글 북마크 등록
    public void bookmarkOn(BookmarkDto param) {
        int myBookmark = MyBookmark(param);
        if(myBookmark > 0) {
            bookmarkRepository.BookmarkOff(param.getRestaurant_id(), param.getUsername());
        } else {
            bookmarkRepository.BookmarkOn(param);
        }
    }

    
    
    
    
    public int MyBookmark(BookmarkDto param) {
        return bookmarkRepository.MyBookmark(param);
    }

}
