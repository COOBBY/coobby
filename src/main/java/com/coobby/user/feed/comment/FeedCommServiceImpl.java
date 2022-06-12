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

	private static final String DATE_PATTERN = "yyyy-MM-dd";		//날짜형식 정의
	private static final Date today = new Date();					//현재날짜 정의
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);		//SimpleDateFormat에 정의한 날짜형식을 인자로 정의
	
	// 댓글 보기
	public List<FeedCommentVO> getFeComm(int feNo) {
		return commRepo.getFeComment(feNo);
	}
	
	// 댓글 등록
	public FeedCommentVO insertFeComm(FeedCommentVO vo) {			//피드 댓글 입력 메소드
		vo.setFeCommCreatetime(date.format(today));					//받아온 피드 댓글 vo에 현재날짜를 정의된 날짜패턴으로 setter 호출 
		
		return commRepo.save(vo);									//피드 댓글 vo를 저장
		
	}

	@Override
	public FeedCommentVO insertChildFeComm(FeedCommentVO fevo) {	//피드 대댓글 입력 메소드
		fevo.setFeCommCreatetime(date.format(today));				//받아온 피드 댓글 vo에 현재날짜를 정의된 날짜패턴으로 setter호출
		return commRepo.save(fevo);									//피드 댓글 vo를 저장
	}


}
