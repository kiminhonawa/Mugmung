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
public class Menus {
   private long id;
   private long restaurant_id;
   private String menu1_name;
   private long menu1_price;
   private String menu2_name;
   private long menu2_price;
   private String menu3_name;
   private long menu3_price;
}
