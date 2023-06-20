package com.itwill.spring2.web.community;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.spring2.domain.Criteria;
import com.itwill.spring2.dto.CaptureCreateDto;
import com.itwill.spring2.dto.CaptureDetailDto;
import com.itwill.spring2.dto.CaptureListDto;
import com.itwill.spring2.dto.CaptureUpdateDto;
import com.itwill.spring2.dto.PageDto;
import com.itwill.spring2.dto.PostDetailDto;
import com.itwill.spring2.service.CaptureService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j // 로그
@RequiredArgsConstructor // 생성자에 의한 의존성 주입
@RequestMapping("/community")
@Controller // DispatcherServlet에게 컨트롤로 컴포넌트로 등록.

public class CaptureController {

    private final CaptureService captureService;

    @GetMapping("/capture/capturelist")
    public void list(Criteria cri, Model model) {
        log.info("list()");

        
        List<CaptureListDto> list = captureService.read();

        model.addAttribute("captures", list);
//        model.addAttribute("list", list = captureService.read(cri));
//        model.addAttribute("pageMaker", new PageDto(cri, 123));
        
    }

    @GetMapping("/capture/capturecreate")
    public void create() {

        log.info("GET: create()");

    }

    @PostMapping("/capture/capturecreate") //DB까지 가야
    public String create(CaptureCreateDto dto) {
        log.info("POST: create({})", dto);

        int result = captureService.create(dto);
        log.info("사진게시판 등록 결과 = {}", result);

        return "redirect:/community/capture/capturelist";

    }

    
    @GetMapping("/capture/capturedetail") 
    public void detail(long id, Model model) {
        log.info("detail(id={})", id);
        
        //서비스 계층의 메서드를 호출해서 화면에 보여줄 captureDetailDto를 가져옴
        CaptureDetailDto dto = captureService.read(id);
        
        log.info("dto={}",dto);
        
        //뷰에서 CaptureDetailDto를 전달
        model.addAttribute("capture", dto);
        
      }
     
    @GetMapping("/capture/capturemodify")
    public void modify(long id, Model model) {
        log.info("modify(id={})", id);
        
        CaptureDetailDto dto = captureService.read(id);
        model.addAttribute("capture", dto);
    }
    
    @PostMapping("/capture/delete")
    public String delete(long id) {
        log.info("delete(id={})", id);
        
        int result = captureService.delete(id);
        log.info("포스트 삭제 결과 = {}", result);
        
        return "redirect:/community/capture/capturelist";
    }
    
    @PostMapping("/capture/update")
    public String update(CaptureUpdateDto dto) {
        log.info("update(dto={}", dto);
        
        int result = captureService.update(dto);
        log.info("포스트 업데이트 결과 = {}", result);
        
        return "redirect:/community/capture/capturelist";
    }
    
    //검색
    @GetMapping("/capture/search")
    public String search(@RequestParam(value = "search") String search, Model model ) {
        log.info("검색 = {}", search);
        List<CaptureListDto> list = captureService.searchLists(search);

        model.addAttribute("captures", list);
        
        return "/community/capture/capturelist";
    }
    
    
}

