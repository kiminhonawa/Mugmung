package com.itwill.spring2.web;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.spring2.domain.Reserve;
import com.itwill.spring2.dto.ReserveDto;
import com.itwill.spring2.service.ReserveService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/reserve")
@Controller
public class ReserveController {
	
	private final ReserveService reserveService;
	
	 @GetMapping("/booking")
	    public void reserve() {
	        log.info("GET: reserve()");
	    }
	    
	
	
	
	
	@PostMapping("/booking")
	public ResponseEntity<String> reserve(@RequestBody ReserveDto dto) {
	    log.info("POST: reserve({})", dto);
	    
	    // Create a ReserveDto object and set the reservation information
	    ReserveDto reserveDto = new ReserveDto();
	    reserveDto.setReserve_date(dto.getReserve_date());
	    reserveDto.setMembers(dto.getMembers());
	    reserveDto.setReserve_time(dto.getReserve_time());
	    
	    // Call the reserve method of ReserveService with the ReserveDto object
	    int result = reserveService.reserve(reserveDto);
	    log.info("Reservation result = {}", result);
	    
	    // Return a response indicating the success or failure of the reservation
	    if (result > 0) {
	        return ResponseEntity.ok("Reservation successful");
	    } else {
	        return ResponseEntity.badRequest().body("Reservation failed");
	    }
	}
}