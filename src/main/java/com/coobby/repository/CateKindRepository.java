package com.coobby.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.CateKindVO;

public interface CateKindRepository extends CrudRepository<CateKindVO, Integer>{
	@Query(value="SELECT max(kind_code) FROM kind_cate", nativeQuery=true)
	int findMaxCode();	//가장 큰 kind_code값 반환
}
