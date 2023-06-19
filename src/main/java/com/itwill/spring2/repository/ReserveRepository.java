package com.itwill.spring2.repository;

import com.itwill.spring2.domain.Reserve;
import com.itwill.spring2.dto.RestaurantDto;

public interface ReserveRepository {

	
	int insert(Reserve reserve);

	RestaurantDto read(String id);
}
