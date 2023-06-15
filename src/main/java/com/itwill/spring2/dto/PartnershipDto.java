package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@Builder
public class PartnershipDto {
    private long id;
    private String title;
    private String content;
    private String partner_image_id;
    private String writer;
    private String partner_type;
}
