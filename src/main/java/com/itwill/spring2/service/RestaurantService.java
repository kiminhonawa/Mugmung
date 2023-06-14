package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

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
    private final PostReviewRepository postReviewRepository;
    
    public RestaurantDto read(long id) {
        log.info("read(id={})",id);
        
        RestaurantDto entity = restaurantRepository.selectById(id);

        
        // 리뷰 개수 검색
//        long count = postReviewRepository.ReviewCountWithPostId(id);
//        entity.set
        
        
        return entity;
    }
}
