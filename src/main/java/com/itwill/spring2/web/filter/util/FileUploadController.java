//package com.itwill.spring2.web.filter.util;
//
//import java.io.File;
//import java.util.UUID;
//
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.itwill.spring2.service.PostService;
//import com.itwill.spring2.web.PostController;
//
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//
//@Slf4j // 로그
//@RequiredArgsConstructor // 생성자에 의한 의존성 주입
//@RequestMapping("/upload") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
//@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
//public class FileUploadController {
//	
//	@PostMapping("/imgUpload")
//	public ResponseEntity<Integer> imgUpload(@RequestParam("file") MultipartFile file, @RequestParam("my") String my) throws Exception {
//	    String fileName = file.getOriginalFilename();
//	log.info("fileName = {}",fileName);
//	log.info("my = {}",my);
//	// Generate a random file name.
//	String randomFileName =UUID.randomUUID().toString() + "_" + fileName;
//	log.info("randomFileName = {}",randomFileName);
//	// Create a new file in the C:/mugmung/img/title path.
//	File newFile = new File(new File("C:/mugmung/img/title"), randomFileName);
//	log.info("newFile = {}",newFile);
//	// Write the file to the disk.
//	file.transferTo(newFile);
//	// Redirect the user back to the upload page.
//	return ResponseEntity.ok(1);
//
//	}
//
//}
