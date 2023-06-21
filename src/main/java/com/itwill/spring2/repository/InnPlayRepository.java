package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.dto.InnPlayListDto;

public interface InnPlayRepository {
	List<InnPlayListDto> innListRead();
	
	List<InnPlayListDto> playListRead();
}
