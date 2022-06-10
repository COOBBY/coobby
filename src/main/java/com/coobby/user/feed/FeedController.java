package com.coobby.user.feed;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.user.feed.comment.FeedCommService;
import com.coobby.vo.FeedCommentVO;
import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;

@Controller
@RequestMapping("/user/feed")
public class FeedController {
	
	@Autowired
	private FeedService feedService;
	
	@Autowired
	private FeedCommService feedcommService;

	
		// 마이피드 목록 출력
		@RequestMapping("/MyFeed")
		public void getFeedList(Model m) {
			FeedVO vo = new FeedVO();
			List<Object[]> list = feedService.getFeedList(vo);
			
			m.addAttribute("feedList",list);
		}

		// 마이피드 상세보기
		@RequestMapping("/MyFeedModal")
		public void myFeedModal(FeedVO vo, Model m) {
			m.addAttribute("myfeedmodal", feedService.getFeedModal(vo));
			m.addAttribute("feedimg", feedService.getFeedModalimg(vo));

			// 댓글 보기
			List<FeedCommentVO> list = feedcommService.getFeComm(vo.getFeNo());
			m.addAttribute("feedcomm",list);
			System.out.println(">>>>>"+list.size());
			//return "redirect:MyFeedModal?feNo=" + vo.getFeNo();
		}

		// 피드 댓글 등록
		@RequestMapping("/insertFeComm")
		@ResponseBody
		public List<FeedCommentVO> insertFeComm(FeedCommentVO fevo) {
			feedcommService.insertFeComm(fevo);
			
			List<FeedCommentVO> list = feedcommService.getFeComm(fevo.getFeed().getFeNo());
			return list;
		}
		
		
		@RequestMapping("/insertFeed")
		public void insertFeed() {
			
		}
		

		// 피드 작성페이지
		@RequestMapping("/saveFeed")
		public String saveFeed(FeedVO vo, MultipartFile[] file) {	
			feedService.insertFeed(vo, file);
			return "redirect:MyFeed";
		}
		
		// 마이피드 삭제
//		@RequestMapping("/deleteFeed")
//		public String deleteFeed(FeedVO vo) {
//			feedService.deleteFeed(vo);
//			return "redirect:MyFeed";
//		}
		
		
		
		// 마이피드 수정하고 수정된 값 DB에 저장
		@RequestMapping(value="/modifyModal", produces = "application/text;charset=utf-8")
		@ResponseBody
		public String modifyModal(FeedVO vo) {
			FeedVO result = feedService.modifyFeed(vo);
			if(result!=null) return "yes";
			return "no";
			
		}

		
	// ------------------------- 메인피드
		// 마이피드 목록 출력
		@RequestMapping("/MainFeed")
		public void getMainFeedList(Model m) {
			FeedVO vo = new FeedVO();
			List<Object[]> list = feedService.getFeedList(vo);
			
			m.addAttribute("feedList",list);
		}
		
		// 메인피드 상세보기
		@RequestMapping("/MainFeedModal")
		public void MainFeedModal(FeedVO vo, Model m) {
			m.addAttribute("feedmodal", feedService.getFeedModal(vo));
		}
}
