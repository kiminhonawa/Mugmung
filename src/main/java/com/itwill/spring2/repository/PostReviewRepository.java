package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Review;

public interface PostReviewRepository {

        List<Review> ReviewsByRestaurantId(long restaurant_id);
        
        long ReviewCountWithPostId(long restaurant_id);
}
