package com.itwill.spring2.dto;


import java.util.List;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class RestaurantDto {
    private long id;
//    private long menu_id;
//    private long map_id;
//    private long address_id;
    private String images_loc;
    private String name;
    private String phone_num;
    
    private String menu1_name;
    private long menu1_price;
    private String menu2_name;
    private long menu2_price;
    private String menu3_name;
    private long menu3_price;
    
    private String address1;
    private String address2;
    
    private float x;
    private float y;
    
    
    
    private long business_start_hour;
    private long business_end_hour;
    private long low_price_range;
    private long high_price_range;
    private long max_members;
    
    private String name_info;   
    
    private String food_type1;
    private String food_type2;
    private String food_type3;
    private String last_order;
    private String holiday;
    private String web_link;
    
    public RestaurantDto toEntity() {
        return RestaurantDto.builder()
                .id(id)
                .images_loc(images_loc)
                .address1(address1)
                .address2(address2)
                .name(name)
                .phone_num(phone_num)
                .food_type1(food_type1)
                .food_type2(food_type2)
                .food_type3(food_type3)
                .low_price_range(low_price_range)
                .high_price_range(high_price_range)
                .business_start_hour(business_start_hour)
                .business_end_hour(business_end_hour)
                .last_order(last_order)
                .holiday(holiday)
                .web_link(web_link)
                .name_info(name_info)
                .x(x)
                .y(y)
                .menu1_name(menu1_name)
                .menu1_price(menu1_price)
                .menu2_name(menu2_name)
                .menu2_price(menu2_price)
                .menu3_name(menu3_name)
                .menu3_price(menu3_price)
                .max_members(max_members)
                .build();
        
    }
    
    
}
