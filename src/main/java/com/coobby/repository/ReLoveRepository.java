package com.coobby.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.coobby.vo.ReLoveVO;

public interface ReLoveRepository extends CrudRepository<ReLoveVO,Integer>{
	
	@Transactional
	@Modifying
	@Query(value="DELETE FROM RE_LOVE WHERE re_no=?1 and mem_id=?2 ", nativeQuery=true)
	void deleteLove(int reNo, String memId);
	
	@Query(value="SELECT * FROM RE_LOVE WHERE re_no=?1 and mem_id=?2", nativeQuery=true)
	ReLoveVO getLove(int reNo, String memId);

}
