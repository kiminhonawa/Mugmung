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

    private String reply_text;
    private String capture_images_id;
    private String writer;
    
   
    
    public Capture toEntity() {
        
        return Capture.builder()
                .reply_text(reply_text)
                .capture_images_id(capture_images_id)
                .writer(writer)
                .build();
    }
}
