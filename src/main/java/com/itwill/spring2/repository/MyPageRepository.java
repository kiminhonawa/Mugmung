package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.dto.CntDto;
import com.itwill.spring2.dto.MakgoraDto;
import com.itwill.spring2.dto.MyPageBookmarkedDto;
import com.itwill.spring2.dto.MyPagePurchasedDto;
import com.itwill.spring2.dto.MyPageReviewedDto;
import com.itwill.spring2.dto.MyPageStarScoreDto;
import com.itwill.spring2.dto.PartnershipDto;
import com.itwill.spring2.dto.ProposalDto;

public interface MyPageRepository {

	public List<MyPageReviewedDto> readReviewByUsername(String username);

	public List<MyPagePurchasedDto> readPurchaseByUsername(String username);

	public List<MyPageBookmarkedDto> readBookmarkedByUsername(String username);

	public List<MyPageStarScoreDto> readStarscoreByUsername(String username);

	public String selectMyPageImgLoc(String username);

	public CntDto readCntDto(String username);

	public List<MakgoraDto> readMakgoraByUsername(String username);

	public List<PartnershipDto> readPartnerShipByUsername(String username);

	public List<ProposalDto> readProposalByUsername(String username);

}
