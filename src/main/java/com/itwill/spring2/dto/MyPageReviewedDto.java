package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class MyPageReviewedDto {

	private long id;
	private String name;
	private String name_info;
	private String reply_text;
}
