package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Review;
import com.itwill.spring2.dto.RestaurantDto;

public interface RestaurantRepository {


    RestaurantDto selectById(long id);

    // 리뷰 
    List<Review> selectByPostId(long postId) ;

}
