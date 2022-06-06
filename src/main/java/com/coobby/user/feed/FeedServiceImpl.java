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
import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;

@Service
public class FeedServiceImpl implements FeedService {
	
	@Autowired
	private FeedRepository feedRepo;
	@Autowired
	private FeedImageRepository feedimgrepo;
	 
	private static final String DATE_PATTERN = "yyyy-MM-dd"; 
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);
	
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


	
	
}
