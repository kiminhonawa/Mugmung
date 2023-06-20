package com.itwill.spring2.web.detail;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.spring2.dto.AddressDto;
import com.itwill.spring2.dto.MapDto;
import com.itwill.spring2.dto.MenuDto;
import com.itwill.spring2.dto.PostReviewDto;

import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.service.AddressService;
import com.itwill.spring2.service.MapService;
import com.itwill.spring2.service.MenuService;
import com.itwill.spring2.service.PostReviewService;
import com.itwill.spring2.service.RestaurantService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/detail")
@RequiredArgsConstructor
@Controller
public class DetailController extends HttpServlet{
    
    private final RestaurantService restaurantService;
    private final AddressService addressService;
    private final MapService mapService;
    private final MenuService menuService;
    
   
    
    // 페이지 클릭 시, 상세보기 페이지
    @GetMapping("/detail")
    public void detail(@RequestParam("id") Long id, Model model, HttpServletRequest request) {
        log.info("detail()", id);
        
            HttpSession session = ((HttpServletRequest) request).getSession();
                    
            String username = (String) session.getAttribute("signedInUser");
            log.info("username = {}",username);
        
            RestaurantDto restaurantdto = restaurantService.read(id);
            log.info("restaurant={}", restaurantdto);
            
//            AddressDto addressDto = addressService.read(id);
//            MapDto mapDto = mapService.read(id);
//            MenuDto menuDto = menuService.read(id);
            
//            restaurantdto.setAddress_id(addressDto);
//            restaurantdto.setMap_id(mapDto);
//            restaurantdto.setMenu_id(menuDto);
            
            model.addAttribute("detail", restaurantdto); 
            
            // --
            // 리뷰 불러오기
            List<PostReviewDto> list = restaurantService.readDetailReview(id);
            log.info("list={}",list);
            // 서비스 에선 -> repository
            // mapper
            // select write, reply_text from review r, 레스토 s
            // where r.resotorang_id = s.id
            //        and r.id = #{id};
             model.addAttribute("review", list);
    }   
        
    
    
    // 지도 불러오기
    
      
        
    
}
