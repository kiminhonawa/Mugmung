package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MakgoraDto {
	
	private long id;
	private String type;
	private String product;
	private String title;
	private String content;
	
	
}
