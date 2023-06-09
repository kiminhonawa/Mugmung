package com.itwill.spring2.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itwill.spring2.domain.Bookmark;
import com.itwill.spring2.dto.PostListDto;

@Repository
public interface BookmarkRepository {

    // 게시글 북마크 등록
    List<PostListDto> BookmarkOn(Bookmark param);
    
    // 게시글 북마크 상태
    int MyBookmark(Bookmark param);
    
    // 게시글 북마크 취소
    int BookmarkOff(long post_id, long user_id);
}
