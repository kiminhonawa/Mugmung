package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.dto.MyPagePurchasedDto;
import com.itwill.spring2.dto.MyPageReviewedDto;

public interface MyPageRepository {

	public List<MyPageReviewedDto> readReviewByUsername(String username);

	public List<MyPagePurchasedDto> readPurchaseByUsername(String username);

}
