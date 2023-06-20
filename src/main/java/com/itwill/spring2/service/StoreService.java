package com.itwill.spring2.service;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Service;

import com.itwill.spring2.domain.Address;
import com.itwill.spring2.domain.Images;
import com.itwill.spring2.domain.Maps;
import com.itwill.spring2.domain.Menus;
import com.itwill.spring2.domain.Store;
import com.itwill.spring2.dto.AdminUpdateDto;
import com.itwill.spring2.dto.ImagesDto;
import com.itwill.spring2.dto.RestaurantDto;
import com.itwill.spring2.dto.StoreCreateDto;
import com.itwill.spring2.repository.StoreRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class StoreService {
    
    private final StoreRepository storeRepository;
    
    // 가게 등록 페이지
    public int createRes(RestaurantDto dto) {
        log.info("create({})", dto);
        
        return storeRepository.createRes(Store.builder()
                .name(dto.getName())
                .name_info(dto.getName_info())
                .phone_num(dto.getPhone_num())
                .food_type1(dto.getFood_type1())
                .food_type2(dto.getFood_type2())
                .food_type3(dto.getFood_type3())
                .business_start_hour(dto.getBusiness_start_hour())
                .business_end_hour(dto.getBusiness_end_hour())
                .last_order(dto.getLast_order())
                .holiday(dto.getHoliday())
                .web_link(dto.getWeb_link())
                .low_price_range(dto.getLow_price_range())
                .high_price_range(dto.getHigh_price_range())
                .max_members(dto.getMax_members())
                .build()
                
                );
    }
        
        // 메뉴 테이블
        
        public int createMenu(RestaurantDto dto) {
            return storeRepository.createMenu(Menus
                    .builder()
                    .restaurant_id(dto.getId())
                    .menu1_name(dto.getMenu1_name())
                    .menu1_price(dto.getMenu1_price())
                    .menu2_name(dto.getMenu2_name())
                    .menu2_price(dto.getMenu2_price())
                    .menu3_name(dto.getMenu3_name())
                    .menu3_price(dto.getMenu3_price())
                    .build()
                    );
        }

        // 이미지 테이블
        public int createImg(RestaurantDto dto) {
            return storeRepository.createImg(Images
                .builder()
                .restaurant_id(dto.getId())
                .images_loc("C:\\Users\\MG\\git\\upload\\src\\main\\webapp\\static\\img\\"+dto.getImages_loc())
                .images_type("1")
                .build()
                );
    }

        // 어드레스 테이블
        public int createAdd(RestaurantDto dto) {
            return storeRepository.createAdd(Address
                .builder()
                .restaurant_id(dto.getId())
                .address1(dto.getAddress1())
                .address2(dto.getAddress2())
                .build()
                );
    }
        // 맵 테이블
    public int createMap(RestaurantDto dto) {
        return storeRepository.createMap(Maps.builder()
                .restaurant_id(dto.getId())
                .x(dto.getX())
                .y(dto.getY())
                .build()
                );
    }


    public long selectByName(String name) {
        log.info("selectByName(name={})", name);
        
        return storeRepository.selectByName(name);
        
    }

    public int updateAdmin(AdminUpdateDto dto) {
        log.info("updateAdmin(dto={})",dto);
        
        return storeRepository.updateAdmin(dto);
        
    }
    
    
}
