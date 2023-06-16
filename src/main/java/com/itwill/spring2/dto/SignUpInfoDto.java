package com.itwill.spring2.dto;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SignUpInfoDto {
	private long id; // Primary Key
    private String username;
    private String password;
    private String email;
    private int gender;
    private String user_image;
}
