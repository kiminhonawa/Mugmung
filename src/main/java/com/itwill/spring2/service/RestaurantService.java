package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.Review;
import com.itwill.spring2.dto.PostReviewDto;
import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.repository.PostReviewRepository;
import com.itwill.spring2.repository.RestaurantRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class RestaurantService {
    private final RestaurantRepository restaurantRepository;
    
    
    public RestaurantDto read(long id) {
        log.info("read(id={})",id);
        
        RestaurantDto entity = restaurantRepository.selectById(id);
        
        return entity;
    }

    
    // 리뷰 
    public List<PostReviewDto> readDetailReview(long postId) {
        log.info("readDetailReview(postId={})", postId);
        
        List<Review> list = restaurantRepository.selectByPostId(postId);
        
        return list.stream().map(PostReviewDto::fromEntity).toList();
    }
    
    
 
    

        
        
       
    
}
