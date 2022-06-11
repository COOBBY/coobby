package com.coobby.user.feed.comment;

import java.text.SimpleDateFormat;
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

	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);
	
	// 댓글 보기
	public List<FeedCommentVO> getFeComm(int feNo) {
		return commRepo.getFeComment(feNo);
	}
	
	// 댓글 등록
	public FeedCommentVO insertFeComm(FeedCommentVO vo) {
		vo.setFeCommCreatetime(date.format(today));
		
		return commRepo.save(vo);
		
	}

	@Override
	public FeedCommentVO insertChildFeComm(FeedCommentVO fevo) {
		fevo.setFeCommCreatetime(date.format(today));
		return commRepo.save(fevo);
	}


}
