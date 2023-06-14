package com.itwill.spring2.dto;


import java.sql.Timestamp;

import com.itwill.spring2.domain.Review;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class PostReviewDto {

        private long id;
        private long restaurant_id;
        private long star_score;
        private String reply_text;
        private String writer;
        private Timestamp created_time;
        private Timestamp modified_time;
        
        private long reviewCount;
        
        
        public static PostReviewDto fromEntity(Review entity) {
            return PostReviewDto.builder()
                    .id(entity.getId())
                    .restaurant_id(entity.getRestaurant_id())
                    .star_score(entity.getStar_score())
                    .reply_text(entity.getReply_text())
                    .writer(entity.getWriter())
                    .created_time(Timestamp.valueOf(entity.getCreated_time()))
                    .modified_time(Timestamp.valueOf(entity.getModified_time()))
                    .build();
        }
    
}
