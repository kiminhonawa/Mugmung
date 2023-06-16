package com.itwill.spring2.web.user;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.spring2.domain.User;
import com.itwill.spring2.dto.ReplyReadDto;
import com.itwill.spring2.service.ReplyService;
import com.itwill.spring2.service.UserService;
import com.itwill.spring2.web.ReplyController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/join")
public class SignUpApiController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/confirm/{username}")
    public ResponseEntity<User> readById(@PathVariable String username) {
        log.info("readById(username={})", username);
        
        User dto = userService.confirmId(username);
        log.info("dto={}", dto);
        
        return ResponseEntity.ok(dto);
    }
	
	@PostMapping("/imgUpload")
	public ResponseEntity<Integer> imgUpload(@RequestParam("file") MultipartFile file) throws Exception {
	    String fileName = file.getOriginalFilename();
	log.info("fileName = {}",fileName);
	// Generate a random file name.
//	String randomFileName =UUID.randomUUID().toString() + "_" + fileName;
//	log.info("randomFileName = {}",randomFileName);
	// Create a new file in the C:/mugmung/img/title path.
	File newFile = new File(new File("C:\\workspace\\spring2\\src\\main\\webapp\\static\\img\\"), fileName);
	log.info("newFile = {}",newFile);
	// Write the file to the disk.
	file.transferTo(newFile);
	// Redirect the user back to the upload page.
	
	
	// db에 이미지 넣기
	
	
	return ResponseEntity.ok(1);

	}
}
