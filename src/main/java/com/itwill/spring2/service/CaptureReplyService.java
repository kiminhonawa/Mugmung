package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.CaptureReply;
import com.itwill.spring2.domain.Reply;
import com.itwill.spring2.dto.CaptureReplyCreateDto;
import com.itwill.spring2.dto.CaptureReplyReadDto;
import com.itwill.spring2.dto.CaptureReplyUpdateDto;
import com.itwill.spring2.repository.CaptureReplyRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class CaptureReplyService {

    private final CaptureReplyRepository captureReplyRepository;
    
    public int create(CaptureReplyCreateDto dto) {
       
        log.info("create(dto={})", dto);
        return captureReplyRepository.insert(dto.toEntity());
    }

    public List<CaptureReplyReadDto> read(long capture_id) {
        log.info("read(dto={})", capture_id);
        List<CaptureReply>list = captureReplyRepository.selectByCaptureId(capture_id);
        return list.stream().map(CaptureReplyReadDto::fromEntity).toList();
    }

    public CaptureReplyReadDto readById(long capture_id) {
        log.info("readById(id={}", capture_id);
        
        CaptureReply entity = captureReplyRepository.selectById(capture_id);
        
        return CaptureReplyReadDto.fromEntity(entity);
    }

    
      public int update(long capture_id, CaptureReplyUpdateDto dto) {
      log.info("update(id={}, dto={}", capture_id, dto);
      
      CaptureReply entity = CaptureReply.builder() 
              .capture_id(capture_id) 
              .reply_text(dto.getReplyText())
              .build(); 
      log.info("entity={}", entity);
              
      return captureReplyRepository.update(entity); 
      }
      
      
      public int delete(long id) { 
          log.info("delete(id={})", id);
      
      return captureReplyRepository.delete(id); 
      }
     
}
