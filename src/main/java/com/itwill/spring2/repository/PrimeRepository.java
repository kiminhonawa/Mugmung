package com.itwill.spring2.repository;

import java.util.List;

import com.itwill.spring2.dto.PrimeDto;

public interface PrimeRepository {

	List<PrimeDto> primeListRead();
}
