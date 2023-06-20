package com.itwill.spring2.dto;

import com.itwill.spring2.domain.Store;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StoreListDto {
    private long id;
    private String name;
    private String phone_num;
    private String food_type1;
    private long low_price_range;
    private long high_price_range;
    private long business_start_hour;
    private long business_end_hour;
    private String last_order;
    private String holiday;
    private String web_link;
    private String food_menu;
    private String name_info;
    
    public static StoreListDto fromEntity(Store entity) {
        return StoreListDto.builder()
                .id(entity.getId())
                .name(entity.getName())
                .phone_num(entity.getPhone_num())
                .food_type1(entity.getFood_type1())
                .low_price_range(entity.getLow_price_range())
                .high_price_range(entity.getHigh_price_range())
                .business_start_hour(entity.getBusiness_start_hour())
                .business_end_hour(entity.getBusiness_end_hour())
                .last_order(entity.getLast_order())
                .holiday(entity.getHoliday())
                .web_link(entity.getWeb_link())
                .name_info(entity.getName_info())
                .build();
        
    }
}
