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
}
