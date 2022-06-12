package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.FeedCommentVO;
import com.coobby.vo.FeedVO;

public interface FeedCommRepository extends CrudRepository<FeedCommentVO, Integer> {

	@Query(value="SELECT * FROM feed_comment WHERE fe_no = ?1", nativeQuery = true)
	List<FeedCommentVO> getFeComment(Integer feNo);

	@Query(value="SELECT max(fe_comm_no) FROM feed_comment", nativeQuery=true)
	int getMaxFeCommNo();
}
