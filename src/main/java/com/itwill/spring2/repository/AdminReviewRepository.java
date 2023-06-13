package com.itwill.spring2.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itwill.spring2.domain.Bookmark;
import com.itwill.spring2.dto.PostListDto;
import com.itwill.spring2.dto.ReviewDto;

@Repository
public interface AdminReviewRepository {

	List<ReviewDto> read(String username);

	
}
