package com.itwill.spring2.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reserve {
	
	private long id;
	private long restaurant_id;
	private Timestamp reserve_date;
	private long members;
	private Timestamp reserve_time;
	
	
	
}
