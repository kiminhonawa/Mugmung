package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.domain.Store;


public interface StoreRepository {
    
    int insert(Store store);
    List<Store> selectOrderByIdDesc();
    Store selectById(long id);
    
}
