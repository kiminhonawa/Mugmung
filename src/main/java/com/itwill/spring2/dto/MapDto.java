package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//ID            NOT NULL NUMBER(8)   
//RESTAURANT_ID NOT NULL NUMBER(8)   
//X                      NUMBER(8,8) 
//Y                      NUMBER(8,8) 

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class MapDto {
    private long id;
    private long restaurant_id;
    private long x;
    private long y;
    
    
    public MapDto toEntity() {
        return MapDto.builder()
                .id(id)
                .restaurant_id(restaurant_id)
                .x(x)
                .y(y)
                .build();
    }
    
}
