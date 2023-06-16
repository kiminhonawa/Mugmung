package com.itwill.spring2.dto;

import java.sql.Timestamp;

import com.itwill.spring2.domain.CaptureReply;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
@AllArgsConstructor
@Builder
public class CaptureReplyReadDto {

    private long id;
    private long capture_id;
    private String replyText;
    private String writer;
    private Timestamp modifiedTime;

 // DB에서 select한 Reply 타입 객체를 ReplyReadDto 타입 객체로 변환해서 리턴.
    public static CaptureReplyReadDto fromEntity(CaptureReply entity) {
        return CaptureReplyReadDto.builder()
                .id(entity.getId())
                .capture_id(entity.getCapture_id())
                .replyText(entity.getReply_text())
                .writer(entity.getWriter())
                .modifiedTime(Timestamp.valueOf(entity.getModified_time()))
                .build();
    }
    
}
