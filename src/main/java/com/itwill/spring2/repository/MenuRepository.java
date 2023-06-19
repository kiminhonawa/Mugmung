package com.itwill.spring2.repository;

import com.itwill.spring2.dto.MenuDto;

public interface MenuRepository {

    
    MenuDto findByRestaurantId(long id);
}
