package com.itwill.spring2.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class ReviewDto {
	private long id;
	private String reply_text;
	private String writer;
	
	public ReviewDto toEntity() {
		return ReviewDto.builder()
				.id(id)
				.reply_text(reply_text)
				.writer(writer)
				.build();
				
	}
}
