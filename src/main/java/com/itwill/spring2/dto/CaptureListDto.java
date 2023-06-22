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
public class CaptureListDto {
    
    private long id;
    private String content;
    private String capture_image_id;
    private String writer;
    private Timestamp created_time;
    
    private String images_loc;
    
    //capture 타입의 객체를 captureListDto 타입의 객체로 변화해서 리턴하는 메서드
    public static CaptureListDto fromEntity (Capture entity) {
        return CaptureListDto.builder()
                .id(entity.getId())
                .content(entity.getContent())
                
                .capture_image_id(entity.getCapture_image_id())
                .created_time(Timestamp.valueOf(entity.getCreated_time()))
                .build();
    }
    
}
