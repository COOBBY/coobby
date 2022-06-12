package com.coobby.user.feed;

import java.util.List;

import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;

public interface MainFeedService {
	
	// 메인피드 목록 출력
	List<Object[]> getMainFeedList(FeedVO vo);
	
	// 메인피드 상세보기
	public FeedVO MainFeedModal(FeedVO vo);
	
	// 메인피드 사진보기
	List<FeedImageVO> MainFeedModalimg(FeedVO vo);
	
	// 좋아요
	public boolean likeMainFeed(String userId, Integer feNo);

}
