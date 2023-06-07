package com.itwill.spring2.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString
public class booking {

		private int id;
		private String storeName;
	    private LocalDateTime tastyDate;
	    private int member;
	    private LocalDateTime reserveTime;
	
}
