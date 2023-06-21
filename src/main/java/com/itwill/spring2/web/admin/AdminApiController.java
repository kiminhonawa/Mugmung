package com.itwill.spring2.web.admin;

import java.io.File;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.spring2.web.user.SignUpApiController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/storecreate")
public class AdminApiController {
    @PostMapping("/imgUpload")
    public ResponseEntity<Integer> imgUpload(@RequestParam("file") MultipartFile file) throws Exception {
        String fileName = file.getOriginalFilename();
    log.info("fileName = {}",fileName);
    // Generate a random file name.
//  String randomFileName =UUID.randomUUID().toString() + "_" + fileName;
//  log.info("randomFileName = {}",randomFileName);
    // Create a new file in the C:/mugmung/img/title path.
    File newFile = new File(new File("C:\\Users\\MG\\git\\upload\\src\\main\\webapp\\static\\img"), fileName);
    log.info("newFile = {}",newFile);
    // Write the file to the disk.
    file.transferTo(newFile);
    // Redirect the user back to the upload page.
    
    
    // db에 이미지 넣기
    
    
    return ResponseEntity.ok(1);

    }
}
