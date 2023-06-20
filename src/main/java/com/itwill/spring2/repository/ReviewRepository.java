package com.itwill.spring2.repository;

import com.itwill.spring2.dto.PostReviewDto;

public interface ReviewRepository {

    int insert(PostReviewDto dto);

    String readNameById(Long id);
    
}
