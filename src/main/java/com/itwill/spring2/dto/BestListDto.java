package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BestListDto {
	private long id;
	private String name;
	private String images_loc;
	private String adress1;
	private String adress2;
	private long star_score;

}
