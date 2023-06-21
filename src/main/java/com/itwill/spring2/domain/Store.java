package com.itwill.spring2.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString
public class Store {

    private long id;
    private String name;
    private String name_info;
    private String phone_num;
    private String food_type1;
    private String food_type2;
    private String food_type3;
    private long business_start_hour;
    private long business_end_hour;
    private String last_order;
    private String holiday;
    private String web_link;
    private long low_price_range;
    private long high_price_range;
    private long max_members;
    
    
}
