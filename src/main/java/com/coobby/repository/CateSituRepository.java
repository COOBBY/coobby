package com.coobby.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.CateSituVO;

public interface CateSituRepository extends CrudRepository<CateSituVO, Integer>{
	@Query(value="SELECT max(situ_code) FROM situ_cate", nativeQuery=true)
	int findMaxCode();	//가장 큰 situ_code값 반환
}
