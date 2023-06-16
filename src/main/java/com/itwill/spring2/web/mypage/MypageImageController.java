package com.itwill.spring2.web.mypage;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/mypage") 
@RestController 
public class MypageImageController {
	
	@GetMapping("/your-image-url")
	public ResponseEntity<byte[]> showImage(@RequestParam("imageFileName") String imageFileName) {
	    // 이미지 파일의 경로 생성
	    String imagePath = "C:\\workspace\\spring2\\src\\main\\webapp\\static\\img\\" + imageFileName;
	    
	    // 이미지 파일을 바이트 배열로 읽어옴
	    byte[] imageBytes = null;
	    try {
	        imageBytes = Files.readAllBytes(Paths.get(imagePath));
	    } catch (IOException e) {
	        e.printStackTrace();
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
	    }
	    
	    // 이미지 파일과 적절한 MIME 타입을 응답으로 반환
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.IMAGE_JPEG); // 이미지 타입에 맞게 설정 (여기서는 JPEG 이미지로 가정)
	    return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
	}
}
