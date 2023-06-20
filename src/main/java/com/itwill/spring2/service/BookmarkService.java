package com.itwill.spring2.service;


import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.BookmarkDto;
import com.itwill.spring2.dto.DetailCreateDto;
import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.repository.BookmarkRepository;
import com.itwill.spring2.repository.UserRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class BookmarkService {

    private final BookmarkRepository bookmarkRepository;
    
    
    
    // 게시글 북마크 등록
    public void bookmarkOn(long restaurant_id, String username) {
        log.info("bookmarkOn(id={}, username={})", restaurant_id, username);
        
        
        // 북마크 상태 조회
        long bookmarkStatus = bookmarkRepository.MyBookmark(restaurant_id, username); 
        
        
        
        if(bookmarkStatus > 0) {
            bookmarkRepository.BookmarkOff(restaurant_id, username); // 북마크 취소
        } else {
            bookmarkRepository.BookmarkOn(restaurant_id, username); // 북마크 등록 
        }
 
    }



	public int insert(DetailCreateDto dto) {
		log.info("insert(dto={})",dto);
		return bookmarkRepository.insert(dto);
	}



	public int delete(DetailCreateDto dto) {
		log.info("delete(dto={})",dto);
		return bookmarkRepository.delete(dto);
	}



	public String selectbyName(String username) {
		log.info("selectbyName(username={})",username);
		return bookmarkRepository.selectbyName(username);
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
