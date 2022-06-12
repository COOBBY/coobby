package com.coobby.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.CateHowVO;

public interface CateHowRepository extends CrudRepository<CateHowVO, Integer>{
	
	@Query(value="SELECT max(how_code) FROM how_cate", nativeQuery=true)
	int findMaxCode();		//가장 큰 how_code값 반환
}
