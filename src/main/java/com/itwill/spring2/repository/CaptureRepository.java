package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Capture;
import com.itwill.spring2.domain.Criteria;
import com.itwill.spring2.dto.CaptureListDto;

public interface CaptureRepository {

    int insert(Capture capture);

    List<CaptureListDto> selectWithReplyCount();

    Capture selectById(long id);

    int deleteById(long id);

    int updateContent(Capture capture);

    void increaseViews(long id);

    List<CaptureListDto> selectByKeyword(String keyword);

    List<CaptureListDto> captureListRead(Criteria cri);
    
    
    
}
