package com.itwill.spring2.service;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.Store;
import com.itwill.spring2.dto.StoreCreateDto;
import com.itwill.spring2.repository.StoreRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class StoreService {
    
    private final StoreRepository storeRepository;
    
    // 가게 목록 페이지
    
    // 가게 등록 페이지
    public int create(StoreCreateDto dto) {
        log.info("create({})", dto);
        return storeRepository.insert(dto.toEntity());
    }
}
