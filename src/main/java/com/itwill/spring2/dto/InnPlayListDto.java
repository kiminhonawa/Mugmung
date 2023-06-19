package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InnPlayListDto {
		private long id;
		private String name;
		private String web_url;
		private String address;
		private String img_url;
		private long price;
}
