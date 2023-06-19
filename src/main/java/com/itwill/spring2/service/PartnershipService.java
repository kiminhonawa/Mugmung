package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.PartnershipDto;
import com.itwill.spring2.repository.PartnershipRepository;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class PartnershipService {

    private final PartnershipRepository partnershipRepository;
        
   public int create(PartnershipDto dto) {
       log.info("PartnershipCreate({})", dto);
       
       return partnershipRepository.insert(dto.toEntity());
       
   }
    
}
