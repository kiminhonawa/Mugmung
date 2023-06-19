package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.dto.ChartListDto;

public interface ChartRepository {
	List <ChartListDto> chartRead();
}
