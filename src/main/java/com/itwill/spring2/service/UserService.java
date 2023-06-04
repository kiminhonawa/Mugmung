package com.itwill.spring2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.User;
import com.itwill.spring2.repository.UserRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	public User signIn(User user) {
		log.info("signIn(user={})", user);
		
		return userRepository.selectByUsernameAndPassword(user);
				
	}
}
