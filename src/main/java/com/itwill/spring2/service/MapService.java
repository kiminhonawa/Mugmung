package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.MapDto;
import com.itwill.spring2.repository.MapRepository;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MapService {

    private final MapRepository maprepository;

    public MapDto read(long id) {
        log.info("MapRead(id={})", id);
        MapDto mapDto = maprepository.findByRestaurantId(id);
        
        return mapDto;
    }
}
