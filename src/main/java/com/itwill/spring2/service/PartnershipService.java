package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.PartnershipDto;
import com.itwill.spring2.repository.PartnershipRepository;
import com.itwill.spring2.repository.PostReviewRepository;
import com.itwill.spring2.repository.RestaurantRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class PartnershipService {

    private final PartnershipRepository partnershiprepository;
        
   public int create(PartnershipDto dto) {
       log.info("create({})", dto);
       
       return partnershiprepository.insert(dto);
   }
    
}
