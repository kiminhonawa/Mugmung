package com.itwill.spring2.dto;

import com.itwill.spring2.domain.CaptureReply;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class CaptureReplyCreateDto {
    
    private long capture_id;
    private String reply_text;
    private String writer;
    
    public CaptureReply toEntity() {
        return CaptureReply.builder()
                .capture_id(capture_id)
                .reply_text(reply_text)
                .writer(writer)
                .build();
    }
}
