package com.coobby.user.feed;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.repository.FeedImageRepository;
//import com.coobby.repository.FeedImageRepository;
import com.coobby.repository.FeedRepository;
import com.coobby.repository.LikeFeedRepository;
import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

@Service
public class FeedServiceImpl implements FeedService {
	
	@Autowired
	private FeedRepository feedRepo;
	@Autowired
	private FeedImageRepository feedimgrepo;
	@Autowired
	private LikeFeedRepository likefeedrepo;
	 
	private static final String DATE_PATTERN = "yyyy-MM-dd"; 	//날짜형식 정의 후 DATE_PATTERN변수에 저장
	private static final Date today = new Date();				//현재 날짜를 today변수에 저장
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);	//date변수에 SimpleDateFormat을 활용해 DATE_PATTERN적용
	
	// 피드 목록 출력
	public List<Object[]> getFeedList(FeedVO vo) {
		return feedimgrepo.FeedImage();
		
	}
	
	//마이피드 등록
	public void insertFeed(FeedVO vo, MultipartFile[] file) {
		FeedVO result = feedRepo.save(vo);
		
		// 피드 사진 저장
		if(file != null) {
			for(int i=0; i<file.length; i++) {
				FeedImageVO imgvo = new FeedImageVO();
				imgvo.setFile(file[i]);
				imgvo.setFeed(result);
				imgvo.setFeSeq(i+1);
				
				feedimgrepo.save(imgvo);
			}
		}
		
	}
	
	// 마이피드 상세보기
	public FeedVO getFeedModal(FeedVO vo) {
		return feedRepo.findById(vo.getFeNo()).get();
	}
	
	// 마이피드 사진 보기
	@Override
	public List<FeedImageVO> getFeedModalimg(FeedVO vo) {
		
		//return feedimgrepo.findByfeNo(vo.getFeNo());
		return feedimgrepo.findByfeed(vo);
	}
	
	// 마이피드 삭제
//	public void deleteFeed(FeedVO vo) {
//		feedimgRepo.queryAnnotation(vo.getFe_no());
//		feedRepo.deleteById(vo.getFe_no());
//	}
	
	// 마이피드 수정
	public FeedVO modifyFeed(FeedVO vo) {
		FeedVO fvo = feedRepo.findById(vo.getFeNo()).get();
		fvo.setFeTitle(vo.getFeTitle());
		fvo.setFeContent(vo.getFeContent());
		
		return feedRepo.save(fvo);

	}

	@Override
	public int todayFeed() {
		return feedRepo.findByfeRegdate(date.format(today)).size();
	}

	@Override
	public void likeFeed(FeedVO vo) {
		feedRepo.findById(vo.getFeNo()).get();
		
		// 중복 좋아요 방지
		
	}
	
	// 유저가 이미 좋아요 한 게시물인지 체크
	

	
	
}
