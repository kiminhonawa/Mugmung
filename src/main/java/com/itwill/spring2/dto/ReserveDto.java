package com.itwill.spring2.dto;

import java.sql.Timestamp;

import com.itwill.spring2.domain.Reserve;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReserveDto {
	
	private long id;
	private long restaurant_id;
	private Timestamp reserve_date;
	private long number;
	
		
	public Reserve toEntity() {
		
		return Reserve.builder()
				.id(id)
				.restaurant_id(restaurant_id)
				.reserve_date(reserve_date)
				.number(number)
				.build();
	}
	
	
	
	
}
