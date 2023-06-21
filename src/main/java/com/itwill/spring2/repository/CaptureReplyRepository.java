package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.CaptureReply;
import com.itwill.spring2.domain.Reply;

public interface CaptureReplyRepository {

    int insert(CaptureReply captureReply);

    List<CaptureReply> selectByCaptureId(long capture_id);

    CaptureReply selectById(long id);

    int update(CaptureReply captureReply);

    int delete(long id);
    
    
    
}
