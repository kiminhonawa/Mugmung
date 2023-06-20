package com.itwill.spring2.repository;


import org.springframework.stereotype.Repository;

import com.itwill.spring2.dto.BookmarkDto;
import com.itwill.spring2.dto.DetailCreateDto;
import com.itwill.spring2.dto.RestaurantDto;

@Repository
public interface BookmarkRepository {

    // 게시글 북마크 등록
    RestaurantDto BookmarkOn(long restaurant_id, String username);
    
    // 게시글 북마크 상태
    long MyBookmark(long restaurant_id, String username);
    
    // 게시글 북마크 취소
    int BookmarkOff(long restaurant_id, String username);

	int insert(DetailCreateDto dto);

	int delete(DetailCreateDto dto);

	String selectbyName(String username);

    
}
