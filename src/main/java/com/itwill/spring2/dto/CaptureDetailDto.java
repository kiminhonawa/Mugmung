package com.itwill.spring2.dto;

import java.sql.Timestamp;

import com.itwill.spring2.domain.Capture;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class CaptureDetailDto {

    private long id;
    private String content;
    private String capture_image_id;
    private String writer;
    private Timestamp created_time;
    private Timestamp modified_time;
    
    private long replyCount;
    private long viewsCount;
    
    private String images_loc;
    
    //capture 타입의 객체를 captureListDto 타입의 객체로 변화해서 리턴하는 메서드(fromEntity() 메서드는 엔티티 객체를 DTO 객체로 변환)
    public static CaptureDetailDto fromEntity (Capture entity) {
        return CaptureDetailDto.builder()
                .id(entity.getId())
                .content(entity.getContent())
                .writer(entity.getWriter())
                .capture_image_id(entity.getCapture_image_id())
                .created_time(Timestamp.valueOf(entity.getCreated_time()))
                .modified_time(Timestamp.valueOf(entity.getModified_time()))
                .build();
    }

}
