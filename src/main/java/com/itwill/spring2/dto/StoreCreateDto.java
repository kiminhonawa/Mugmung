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
public class StoreCreateDto {
    
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
    
    public Store toEntity() {
        
        return Store.builder()
                .name(name)
                .phone_num(phone_num)
                .food_type1(food_type1)
                .low_price_range(low_price_range)
                .high_price_range(high_price_range)
                .business_start_hour(business_start_hour)
                .business_end_hour(business_end_hour)
                .last_order(last_order)
                .holiday(holiday)
                .web_link(web_link)
                .food_menu(food_menu)
                .name_info(name_info)
                .build();
}
    
        
    }
