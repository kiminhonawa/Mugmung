package com.itwill.spring2.repository;

import com.itwill.spring2.dto.AddressDto;

public interface AddressRepository {

    AddressDto findByRestaurantId(long id);
    
}
