package com.coobby.user.feed;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;


public interface FeedService {
	
	// 마이피드 목록
	List<Object[]> getFeedList(FeedVO vo);
	
	// 마이피드 상세보기
	public FeedVO getFeedModal(FeedVO vo);
	
	// 마이피드 등록
	public void insertFeed(FeedVO vo, MultipartFile[] file);
	
	// 마이피드 삭제
	//public void deleteFeed(FeedVO vo);
	
	// 마이피드 수정
	public FeedVO modifyFeed(FeedVO vo);
	
	// 당일 피드 생성 갯수
	public int todayFeed();

	List<FeedImageVO> getFeedModalimg(FeedVO vo);

	
	// 마이피드 이미지 삭제
//	public void deleteFeedImage(FeedImageVO imgvo);
	
	
	
	

}
