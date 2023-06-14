package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class MyPageStarScoreDto {

//	r.id, r.name, r.name_info, v.reply_text, v.star_score
	private long id;
	private String name;
	private String name_info;
	private String reply_text;
	private String star_score;
	
	
	
}
