package com.itwill.spring2.dto;


import com.itwill.spring2.domain.Partnership;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class PartnershipDto {
    
    private String title;
    private String content;
    private String partner_image_id;
    private String writer;
    private String partner_type;
  
    
    public Partnership toEntity() {
        
        return Partnership.builder()
                .title(title)
                .content(content)
                .partner_image_id(partner_image_id)
                .writer(writer)
                .partner_type(partner_type)
                .build();
                
    }
}
