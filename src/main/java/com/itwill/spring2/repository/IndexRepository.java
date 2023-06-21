package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Criteria;
import com.itwill.spring2.dto.IndexListDto;

public interface IndexRepository {
	List<IndexListDto> indexListRead(String id);
	
	List<IndexListDto> bestListRead();
	
	List<IndexListDto> getListWithPaging(Criteria cri);
	
	List<IndexListDto> mainbestListRead(String id);
}
