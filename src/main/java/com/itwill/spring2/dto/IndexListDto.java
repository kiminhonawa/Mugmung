package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class IndexListDto {
	
//	r.id
//    , r.name
//    , i.images_loc
//    , a.address1
//    , a.address2
//    , v.star_score
	
	private long id;
	private String name;
	private String images_loc;
	private String address1;
	private String address2;
	private long star_score;

	
}
