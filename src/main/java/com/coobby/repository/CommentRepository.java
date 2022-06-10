package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.Re_commentVO;

public interface CommentRepository extends CrudRepository<Re_commentVO,Integer>{
	
	@Query(value="SELECT * FROM RE_COMMENT WHERE re_no = ?1 ORDER BY re_comm_no", nativeQuery = true)
	List<Re_commentVO> getComment(int reNo);
	
//	@Query(value="SELECT * FROM RE_COMMENT WHERE re_no = ?1 and re_parent = ?2 ORDER BY re_comm_no", nativeQuery = true)
//	List<Re_commentVO> getChildComment(int reNo, int commNo);
	
}
