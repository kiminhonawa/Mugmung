package com.itwill.spring2.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CaptureReply {
    
    private long id;
    private long capture_id;
    private String reply_text;
    private String writer;
    private LocalDateTime created_time;
    private LocalDateTime modified_time;
}
