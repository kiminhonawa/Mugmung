package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.repository.RestaurantRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class RestaurantService {
    private final RestaurantRepository RestaurantRepository;
    
    public RestaurantDto read(long id) {
        log.info("read(id={})",id);
        
        RestaurantDto entity = RestaurantRepository.selectById(id);
        return null;
    }
}
