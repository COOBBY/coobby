package com.coobby.user.feed.comment;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.FeedCommRepository;
import com.coobby.vo.FeedCommentVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

@Service
public class FeedCommServiceImpl implements FeedCommService {
	
	@Autowired
	private FeedCommRepository commRepo;


	
	// 댓글 보기
	public List<FeedCommentVO> getFeComm(int feNo) {
		return commRepo.getFeComment(feNo);
	}
	
	// 댓글 등록
	public FeedCommentVO insertFeComm(FeedCommentVO vo) {
		FeedCommentVO fevo = new FeedCommentVO();
		Date date = new Date();
		
		fevo.setFeed(vo.getFeed());
		fevo.setMember(vo.getMember());
		fevo.setFeContent(vo.getFeContent());
		
		commRepo.save(fevo);
		
		return commRepo.findById(commRepo.getMaxFeCommNo()).get();
	}


}
