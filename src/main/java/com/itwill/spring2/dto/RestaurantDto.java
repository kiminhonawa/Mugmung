package com.itwill.spring2.dto;


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
//    private MenuDto menu_id;
//    private MapDto map_id;
//    private AddressDto address_id; 
    private long business_start_hour;
    private long business_end_hour;
    private long low_price_range;
    private long high_price_range;
    private long max_members;
    private long x;
    private long y;
    private String name;
    private String name_info;   
    private String phone_num;
    private String food_type1;
    private String food_type2;
    private String food_type3;
    private String last_order;
    private String holiday;
    private String web_link;
    private String images_loc;
    private String images_type;
    private long menu1_price;   
    private String menu1_name;
    private long menu2_price;   
    private String menu2_name;
    private long menu3_price;   
    private String menu3_name;
    private String address1;
    private String address2;
    
    
    public RestaurantDto toEntity() {
        return RestaurantDto.builder()
                .id(id)
                .business_start_hour(business_start_hour)
                .business_end_hour(business_end_hour)
                .low_price_range(low_price_range)
                .high_price_range(high_price_range)
                .max_members(max_members)
                .name(name)
                .name_info(name_info)
                .phone_num(phone_num)
                .food_type1(food_type1)
                .food_type2(food_type2)
                .food_type3(food_type3)
                .last_order(last_order)
                .holiday(holiday)
                .web_link(web_link)
                .images_loc(images_loc)
                .images_type(images_type)
                .build();
        
    }
    
    
}
