package com.coobby.repository;

import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.FeedVO;

public interface MainFeedRepository extends CrudRepository<FeedVO, Integer> {

	
}
