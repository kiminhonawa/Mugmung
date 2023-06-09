package com.itwill.spring2.repository;

import com.itwill.spring2.dto.RestaurantDto;

public interface RestaurantRepository {

	RestaurantDto selectById(long id);

}
