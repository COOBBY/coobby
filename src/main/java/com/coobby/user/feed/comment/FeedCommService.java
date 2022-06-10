package com.coobby.user.feed.comment;

import java.util.List;

import com.coobby.vo.FeedCommentVO;
import com.coobby.vo.FeedVO;

public interface FeedCommService {
	
	// 댓글 보기
	public List<FeedCommentVO> getFeComm(int feNo);
	
	// 댓글 등록
	public FeedCommentVO insertFeComm(FeedCommentVO fevo);

	public FeedCommentVO insertChildFeComm(FeedCommentVO fevo);
	
	
	

}
