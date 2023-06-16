package com.itwill.spring2.dto;

import com.itwill.spring2.domain.Capture;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CaptureCreateDto {

    private String content;
    private String capture_image_id;
    private String writer;
    
   
    
    public Capture toEntity() {
        
        return Capture.builder()
                .content(content)
                .capture_image_id(capture_image_id)
                .writer(writer)
                .build();
    }
}
