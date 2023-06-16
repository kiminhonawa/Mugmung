package com.itwill.spring2.service;

import org.springframework.stereotype.Service;

import com.itwill.spring2.dto.MenuDto;
import com.itwill.spring2.repository.MenuRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class MenuService {

    private final MenuRepository menurepository;

    public MenuDto read(long id) {
        log.info("MenuRead(id={})", id);
        
        MenuDto menuDto = menurepository.findByRestaurantId(id);
        
        return menuDto;
    }
}
