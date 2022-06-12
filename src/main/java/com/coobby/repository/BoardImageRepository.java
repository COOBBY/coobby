package com.coobby.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.BoardImageVO;
import com.coobby.vo.BoardVO;

public interface BoardImageRepository extends CrudRepository<BoardImageVO, String>{

	List<BoardImageVO> findByBoardVO(BoardVO board);

}
