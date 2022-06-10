package com.coobby.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

public interface LikeFeedRepository extends CrudRepository<FeLoveVO, Integer> {
	Optional<FeLoveVO> findByMemberAndFeed(MemberVO memvo, FeedVO fvo);

}
