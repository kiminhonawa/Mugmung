package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.ProposalDto;
import com.itwill.spring2.repository.ProposalRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProposalService {

    private final ProposalRepository proposalRepository;
    
    public int create(ProposalDto dto) {
        log.info("ProposalCreate({})" , dto);
        
        return proposalRepository.insert(dto.toEntity());
    }
}
