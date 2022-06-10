package com.coobby.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.coobby.vo.ScrapVO;

public interface ScrapRepository extends CrudRepository<ScrapVO,Integer>{
	@Transactional
	@Modifying
	@Query(value="DELETE FROM SCRAP WHERE re_no=?1 and mem_id=?2 ", nativeQuery=true)
	void deleteScrap(int reNo, String memId);
	
	@Query(value="SELECT * FROM SCRAP WHERE re_no=?1 and mem_id=?2", nativeQuery=true)
	ScrapVO getScrap(int reNo, String memId);
}
