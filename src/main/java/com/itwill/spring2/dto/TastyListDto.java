package com.itwill.spring2.dto;

import com.itwill.spring2.domain.TastyStore;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TastyListDto {
	
	private String storename;
	
	
	public static TastyListDto fromEntity(TastyStore entity) {
		
		return TastyListDto.builder()
				.storename(entity.getStorename())
				.build();
		
	}
	
	
	
	
	
	
}
