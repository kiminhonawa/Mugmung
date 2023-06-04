package com.itwill.spring2.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

// MVC 아키텍쳐에서 Model에 해당하는 클래스. VO(Value Object).
// DB의 USERS 테이블.
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class User {
    private long id; // Primary Key
    private String username;
    private String password;
    private String email;
    private long point;
    private LocalDateTime modified_time;
    private LocalDateTime created_time;
    
}
