package com.itwill.spring2.dto;

import java.time.LocalDateTime;

import com.itwill.spring2.domain.Makgora;

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
	private String title;
	private String content;
	private String writer;
	private LocalDateTime created_time;
	private LocalDateTime modified_time;
	private String makgora_type;

	
	

}
