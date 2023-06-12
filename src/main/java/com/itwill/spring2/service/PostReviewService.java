package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.Review;
import com.itwill.spring2.dto.PostReviewDto;
import com.itwill.spring2.repository.PostReviewRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class PostReviewService {
    
    private final PostReviewRepository postReviewRepository;
    
    public List<PostReviewDto> read(long restaurant_id) {
        log.info("read(restaurant_id={})", restaurant_id);
        
        List<Review> list = postReviewRepository.ReviewsByRestaurantId(restaurant_id);
        
        return list.stream().map(PostReviewDto::fromEntity).toList();
    }
    
    
    
}
