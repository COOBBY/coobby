package com.coobby.user.feed;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;


public interface FeedService {
	
	// 피드 목록
	List<Object[]> getFeedList(FeedVO vo);
	
	// 피드 상세보기
	public FeedVO getFeedModal(FeedVO vo);
	
	// 마이피드 등록
	public void insertFeed(FeedVO vo, MultipartFile[] file);
	
	// 마이피드 수정
	public FeedVO modifyFeed(FeedVO vo);
	
	// 당일 피드 생성 갯수
	public int todayFeed();

	// 사진 보기
	List<FeedImageVO> getFeedModalimg(FeedVO vo);
	
	// 좋아요 
	public boolean likeFeed(String userId, Integer feNO);
	
	// 좋아요 체크
	public boolean likeFeedCheck(Integer feedVO, String memberVO);
	
	// 피드 삭제 (댓글, 이미지, 좋아요)
	public FeedVO deleteFeed(FeedVO vo);
	
	
	
	
	

}
