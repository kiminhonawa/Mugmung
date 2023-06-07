package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.TastyStore;

public interface TastyRoadRepository {
	
	
	List<TastyStore> selectAll();

}
