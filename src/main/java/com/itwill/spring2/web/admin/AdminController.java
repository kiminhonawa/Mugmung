package com.itwill.spring2.web.admin;


import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.spring2.dto.AdminUpdateDto;
import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.service.StoreService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/admin") // PostController 클래스의 메서드들은 요청 주소가 "/post"로 시작.
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.
public class AdminController extends HttpServlet{
    
    private final StoreService storeService;
    
    // 관리자 페이지 메인
    @GetMapping("/main")
    public String map() {
        log.info("map()");

        return "/admin/main";
    }
    @PostMapping("/imageupload")
    public String imageupload(@RequestParam("file") MultipartFile file) throws Exception {
        log.info("imageupload()");
        
        
            String fileName = file.getOriginalFilename();
        log.info("fileName = {}",fileName);
        // Generate a random file name.
        String randomFileName =UUID.randomUUID().toString() + "_" + fileName;
        log.info("randomFileName = {}",randomFileName);
        // Create a new file in the C:/mugmung/img/title 이미지 저장경로
        File newFile = new File(new File("C:/mugmung/img/title"), randomFileName);
        log.info("newFile = {}",newFile);
        // Write the file to the disk.
        file.transferTo(newFile);
        // Redirect the user back to the upload page.
        
        return "/admin/main";
    }

    @GetMapping("/storecreate")
    public void storecreate() {
        log.info("GET: create()");
    }

    @PostMapping("/storecreate")
    public String storecreatePost(RestaurantDto dto, HttpServletRequest request) {
        log.info("POST: storecreate({})", dto);
        
        HttpSession session = ((HttpServletRequest) request).getSession();
        
        String username = (String) session.getAttribute("signedInUser");
        log.info("username = {}",username);
        
        storeService.createRes(dto);
        
        //레스토랑 테이블에서 id를 가지고 와야대. 점포이름으로 가지고 와야대
        long restaurant_id = storeService.selectByName(dto.getName());
        
        dto.setId(restaurant_id);
        
        log.info("setiing 후 dto={}", dto);
        
        storeService.createAdd(dto);
        
        storeService.createMap(dto);
        
        
        storeService.createImg(dto);
        
        storeService.createMenu(dto);
        
        
        AdminUpdateDto adminDto = AdminUpdateDto
                .builder()
                .restaurant_id(dto.getId())
                .username(username)
                .build();
        storeService.updateAdmin(adminDto);
        
        return "redirect:/admin/main";

    }
}
