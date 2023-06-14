package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.CaptureCreateDto;
import com.itwill.spring2.repository.CaptureRepository;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class CaptureService {
    
    private final CaptureRepository captureRepository;
    
    
    public int create(CaptureCreateDto dto) {
        log.info("create({})", dto);
        
        
        return captureRepository.insert(dto.toEntity());
    }

    
    
    
}
