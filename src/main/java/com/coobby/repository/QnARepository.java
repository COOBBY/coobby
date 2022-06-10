package com.coobby.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.coobby.vo.QnAVO;

public interface QnARepository extends CrudRepository<QnAVO, Integer>{

//	@Transactional
//	@Modifying
//	@Query(value ="")
//	
//	public void insertQnA(@Param("id") String mem_id, @Param("title") String q_title, @Param("content") String q_content);
//	
//	public QnAVO findByQnAId(String QnAId);
//}
}