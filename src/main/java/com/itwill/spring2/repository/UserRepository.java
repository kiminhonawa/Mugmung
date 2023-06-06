package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Post;
import com.itwill.spring2.domain.User;
import com.itwill.spring2.dto.PostListDto;

// application-context.xml에서 scan하는 패키지에 있기 때문에
// 인터페이스를 구현하는 클래스가 MyBatis에 의해서 자동으로 만들어짐.
// post-mapper.xml 파일에서 설정된 id와 메서드 이름이 같으면,
// 해당 아이디의 SQL 문장을 실행하는 구현 메서드를 만들어줌.
public interface UserRepository {
	// 아규먼트 user 객체의 username과 password가 일치하는 정보를 찾으면 null이 아닌 값,
    // 일치하는 정보를 찾을 수 없으면 null을 리턴.
    User selectByUsernameAndPassword(User user);

	User selectByUsername(String username);
}
