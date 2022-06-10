package com.coobby.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.coobby.vo.BoardVO;

public interface BoardRepository extends CrudRepository<BoardVO, Integer>{
	
	@Query(value="SELECT b.board_no, b.board_title, b.board_content, i.b_stored_image FROM BOARD b left outer join BOARD_IMAGE i ON b.board_no = i.board_no WHERE b.board_no = :boardNo ", nativeQuery=true)
	List<Object[]> getBoard(@Param(value="boardNo") Integer boardNo);
}
