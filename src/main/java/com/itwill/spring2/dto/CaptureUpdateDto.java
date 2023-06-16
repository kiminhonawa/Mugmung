package com.itwill.spring2.dto;

import java.sql.Timestamp;

import com.itwill.spring2.domain.Capture;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CaptureUpdateDto {
    
    private long id;
    private String content;
    private String capture_image_id;
    private String writer;
    private Timestamp createdTime;
    private Timestamp modifiedTime;
    
    //CaptureUpdateDto 객체를 POST 타입 객체로 변환(toEntity() 메서드는 DTO 객체를 엔티티 객체로 변환)
    public Capture toEntity() {
        return Capture.builder()
                .id(id)
                .content(content)
                .capture_image_id(capture_image_id)
                .build();
                
    }
}
