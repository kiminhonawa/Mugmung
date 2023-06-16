package com.itwill.spring2.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class Makgora {
	
	
	private long id;
	private String title;
	private String content;
	private String makgora_image_id;
	private String writer;
	private LocalDateTime created_time;
	private LocalDateTime modified_time;
	private String makgora_type;
}
