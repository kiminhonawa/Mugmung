package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class MenuDto {

    private long id;                       
    private long restaurant_id;            
    private String menu1_name;              
    private long menu1_price;                       
    private String menu2_name;              
    private long menu2_price;                       
    private String menu3_name;              
    private long menu3_price;                       
    private String menu4_name;              
    private long menu4_price;                       
    private String menu5_name;              
    private long menu5_price;                       
    private String menu6_name;              
    private long menu6_price;                       
    private String menu7_name;              
    private long menu7_price;                       
    private String menu8_name;              
    private long menu8_price;                       
    private String menu9_name;              
    private long menu9_price;                       
    private String menu10_name;             
    private long menu10_price;                      
    private String menu_image_id;     
    
    public MenuDto toEntity() {
        return MenuDto.builder()
                .id(id)
                .restaurant_id(restaurant_id)
                .menu1_name(menu1_name)
                .menu1_price(menu1_price)
                .menu2_name(menu2_name)
                .menu2_price(menu2_price)
                .menu3_name(menu3_name)
                .menu3_price(menu3_price)
                .menu4_name(menu4_name)
                .menu4_price(menu4_price)
                .menu5_name(menu5_name)
                .menu5_price(menu5_price)
                .menu6_name(menu6_name)
                .menu6_price(menu6_price)
                .menu7_name(menu7_name)
                .menu7_price(menu7_price)
                .menu8_name(menu8_name)
                .menu8_price(menu8_price)
                .menu9_name(menu9_name)
                .menu9_price(menu9_price)
                .menu10_name(menu10_name)
                .menu10_price(menu10_price)
                .menu_image_id(menu_image_id)
                .build();
                
    }
}
