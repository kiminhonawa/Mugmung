package com.itwill.spring2.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString
public class Capture {

    private long id;
    private String content;
    private String capture_image_id;
    private String writer;
    private LocalDateTime created_time;
    private LocalDateTime modified_time;
}
