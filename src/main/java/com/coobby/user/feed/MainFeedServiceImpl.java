package com.coobby.user.feed;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.FeedImageRepository;
import com.coobby.repository.LikeFeedRepository;
import com.coobby.repository.MainFeedRepository;
import com.coobby.repository.MemberRepository;
import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

@Service
public class MainFeedServiceImpl implements MainFeedService {

	@Autowired
	private MainFeedRepository mainfeedRepo;
	@Autowired
	private FeedImageRepository feedimgrepo;
	@Autowired
	private LikeFeedRepository likefeedrepo;
	@Autowired
	private MemberRepository memberRepo;
	
	// 메인 피드 목록 출력
	public List<Object[]> getMainFeedList(FeedVO vo) {
		return feedimgrepo.FeedImage();
	}
	
	// 메인 피드 상세보기
	public FeedVO MainFeedModal(FeedVO vo) {
		return mainfeedRepo.findById(vo.getFeNo()).get();
	}
	
	// 사진 보기
	public List<FeedImageVO> MainFeedModalimg(FeedVO vo) {
		return feedimgrepo.findByfeed(vo);
	}
	
	// 좋아요
	public boolean likeMainFeed(String userId, Integer FeNo) {
		MemberVO membervo = memberRepo.findById(userId).get();
		FeedVO feedNoVO = mainfeedRepo.findById(FeNo).get();
		FeLoveVO feloveVO = likefeedrepo.findByMemberVOAndFeedVO(membervo, feedNoVO);
		// feloveVO에 값이 있으면 좋아요가 눌린 거라서 값이 없어져야됨
		// feloveVO에 값이 없으면 좋아요가 안눌린 거라서 값이 들어가야됨
		System.out.println(feloveVO);
		boolean result = false;
		if(feloveVO != null) {
			likefeedrepo.deleteById(feloveVO.getFeLoveNo());
			System.out.println(result);
		}else if(feloveVO == null) {
			FeLoveVO fvo = new FeLoveVO();
			fvo.setFeedVO(feedNoVO);
			fvo.setMemberVO(membervo);
			likefeedrepo.save(fvo);
			result = true;
		}
		return result;
	}
}
