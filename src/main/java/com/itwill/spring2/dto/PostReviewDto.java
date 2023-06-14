package com.itwill.spring2.dto;

import com.itwill.spring2.domain.Post;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostReviewDto {

    private long id;
    private long restaurant_id;
    private long star_score;
    private String reply_text;
    private String writer;
    
}
