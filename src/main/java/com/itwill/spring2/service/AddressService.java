package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.AddressDto;

import com.itwill.spring2.repository.AddressRepository;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class AddressService {

    private final AddressRepository addressrepository;

    
    public AddressDto read (long id) {
        log.info("AddressRead(id={})",id);
        
        AddressDto addressDto = addressrepository.findByRestaurantId(id);
 
        
        return addressDto;
    }
}
