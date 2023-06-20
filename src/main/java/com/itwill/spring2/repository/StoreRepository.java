package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Address;
import com.itwill.spring2.domain.Images;

import com.itwill.spring2.domain.Maps;
import com.itwill.spring2.domain.Menus;
import com.itwill.spring2.domain.Store;

import com.itwill.spring2.dto.AdminUpdateDto;


public interface StoreRepository {
    
    List<Store> selectOrderByIdDesc();
    Store selectById(long id);
    
    // 레스토랑 테이블 인서트
    int createRes(Store store);
    
    // 메뉴 테이블 인서트
    int createMenu(Menus menu);
    
    // 이미지 테이블 인서트
    int createImg(Images images);
    
    // 주소 테이블 인서트
    int createAdd(Address address);
    
    // 맵 테이블 인서트
    int createMap(Maps map);
    
    long selectByName(String name);
    int updateAdmin(AdminUpdateDto dto);
    
    
    
    
    
    
}
