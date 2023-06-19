package com.itwill.spring2.web;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.spring2.domain.Reserve;
import com.itwill.spring2.dto.ReserveDto;
import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.service.ReserveService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/reserve")
@Controller
public class ReserveController extends HttpServlet{
	
	private final ReserveService reserveService;
	
	 @GetMapping("/booking")
	    public void reserve(Model model, @RequestParam("id") String id) {
	        log.info("GET: reserve()");
	        
	        // 예약 달력 그리기 위한 데이터 get 페이지에 뿌려줌
	        RestaurantDto rDto = reserveService.read(id);
	        
	        log.info("rDto={}",rDto);
	        
	        Long max = rDto.getMax_members();
	        Long start = rDto.getBusiness_start_hour();
	        Long end = rDto.getBusiness_end_hour();
	        Integer maxMember = max.intValue();
	        Integer startHour = start.intValue();
	        Integer endHour = end.intValue();
	        
	        model.addAttribute("name",  rDto.getName());
	        model.addAttribute("maxMember",  maxMember);
	        model.addAttribute("startHour", startHour);
	        model.addAttribute("endHour", endHour);
	        
	    }
	    
	
	
	@PostMapping("/booking")
	public String reserve(long numberOfPeople, String reserveTime, String selectedDate, long restaurant_id, HttpServletRequest request ) {
	    log.info("POST: reserve(numberOfPeople={})", numberOfPeople);
	    log.info("POST: reserve(reserveTime={})", reserveTime);
	    log.info("POST: reserve(selectedDate={})", selectedDate);
	    log.info("POST: reserve(id={})", restaurant_id);
	    
	    
	    
	    // Create a ReserveDto object and set the reservation information
	    
	    
//	    reserveDto.setReserve_date(dto.getReserve_date());
//	    reserveDto.setMembers(dto.getMembers());
//	    reserveDto.setReserve_time(dto.getReserve_time());
	    
	    HttpSession session = ((HttpServletRequest) request).getSession();
		
		String username = (String) session.getAttribute("signedInUser");
		log.info("username = {}",username);
		
		Reserve reserve = new Reserve();
	    
	    reserve.setRestaurant_id(restaurant_id);// 맛집 id 셋팅
	    reserve.setMembers(numberOfPeople);// 예약 인원 셋팅
	    reserve.setUsername(username); // 예약자 셋팅
	    
	    // 예약 날짜 시간 셋팅
	    String insertTime = selectedDate+" "+reserveTime+":00";
	    reserve.setReserve_date(LocalDateTime.parse(insertTime, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")));
//		
	    int result = reserveService.reserve(reserve);
	    
//		model.addAttribute("username", username);
	    
	    // Call the reserve method of ReserveService with the ReserveDto object
//	    int result = reserveService.reserve(reserveDto);
//	    log.info("Reservation result = {}", result);
//	    
//	    // Return a response indicating the success or failure of the reservation
//	    if (result > 0) {
//	        return ResponseEntity.ok("Reservation successful");
//	    } else {
//	        return ResponseEntity.badRequest().body("Reservation failed");
//	    }
	    // detail로 이동
	    return "/map/mugmap";
	}
}