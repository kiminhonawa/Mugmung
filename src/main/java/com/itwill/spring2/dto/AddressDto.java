package com.itwill.spring2.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class AddressDto {

    private long id;
    private long restaurant_id;
    private String address1;
    private String address2;
    
    public AddressDto toEntity() {
        return AddressDto.builder()
                .id(id)
                .restaurant_id(restaurant_id)
                .address1(address1)
                .address2(address2)
                .build();
    }
}
