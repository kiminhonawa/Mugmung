package com.itwill.spring2.repository;

import com.itwill.spring2.dto.MapDto;

public interface MapRepository {

        MapDto findByRestaurantId(long id);
}
