package com.coobby.repository;

import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

public interface LikeFeedRepository extends CrudRepository<FeLoveVO, Integer> {
	FeLoveVO findByMemberVOAndFeedVO(MemberVO MemberVO, FeedVO FeedVO);


}
