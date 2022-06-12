package com.coobby.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.CateIngrVO;

public interface CateIngrRepository extends CrudRepository<CateIngrVO, Integer>{
	
	@Query(value="SELECT max(Ingr_code) FROM ingr_cate", nativeQuery=true)
	int findMaxCode();	//가장 큰 ingr_code값 반환
}
