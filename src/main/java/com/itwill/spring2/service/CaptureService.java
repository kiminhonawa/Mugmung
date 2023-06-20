package com.itwill.spring2.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.Capture;
import com.itwill.spring2.domain.Criteria;
import com.itwill.spring2.dto.CaptureCreateDto;
import com.itwill.spring2.dto.CaptureDetailDto;
import com.itwill.spring2.dto.CaptureListDto;
import com.itwill.spring2.dto.CaptureUpdateDto;
import com.itwill.spring2.repository.CaptureRepository;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class CaptureService {
    
    private final CaptureRepository captureRepository;
    

    //목록 페이지
    public List<CaptureListDto> read() {
        log.info("read()");
        
        return captureRepository.selectWithReplyCount();
    }

    //디테일 페이지
    public CaptureDetailDto read(long id) {
        log.info("read(id = {})", id);
        
        //DB capture 테이블에서 검색
        Capture entity = captureRepository.selectById(id);
        
        //검색한 내용을 DTO로 변환
        CaptureDetailDto dto = CaptureDetailDto.fromEntity(entity);
        
        return dto;
    }

    //새 글 작성
    public int create(CaptureCreateDto dto) {
        log.info("create({})", dto);
        
        return captureRepository.insert(dto.toEntity());
    }

    //글 삭제
    public int delete(long id) {
        log.info("delete(id = {})", id);
        return captureRepository.deleteById(id);
    }
    
    //글 업데이트
    public int update(CaptureUpdateDto capture) {
        log.info("update({})", capture);
        return captureRepository.updateContent(capture.toEntity());
    }
    
   
    //조회수
    /*
     * public void increaseViews(long id) { log.info("increaseViews(id = {})", id);
     * captureRepository.increaseViews(id);
     * 
     * }
     */
    
    //검색
    public List<CaptureListDto> searchLists(String keyword) {
        log.info("searchLists(keyword = {})", keyword);
        
        return captureRepository.selectByKeyword(keyword);
    }
    
    //페이징
    public List<CaptureListDto> read(Criteria cri) {
        log.info("read(cri=()}",cri);
        
        List<CaptureListDto> list = captureRepository.captureListRead(cri);
        
        log.info("list={}", list);
        return list;
    }
        
}
    
    
    

