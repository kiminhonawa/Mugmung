package com.itwill.spring2.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.FormDataDto;

@RestController
public class TempSaveController {

    @PostMapping("/Temp_save")
    @ResponseBody
    public String saveTempData(@RequestBody FormDataDto formdata) {
        // 폼 데이터 처리 및 필요한 로직 수행
        // 실제로는 데이터를 데이터베이스에 저장하거나 다른 작업을 수행해야 함
        
        // 예시: 폼 데이터 콘솔에 출력
//        System.out.println("Star Score: " + formData.getStarScore());
//        System.out.println("Content: " + formData.getContent());
        
        // 응답 메시지 반환
        return "임시저장이 완료되었습니다.";
    }
    
}
