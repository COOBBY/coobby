package com.coobby.user.feed;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.user.feed.comment.FeedCommService;
import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedCommentVO;
import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

@Controller
@RequestMapping("/user/feed")
public class FeedController {
	
	@Autowired
	private FeedService feedService;
	@Autowired
	private FeedCommService feedcommService;
	@Autowired
	private MainFeedService mainfeedservice;

	
		// 마이피드 목록 출력
		@RequestMapping("/MyFeed")
		public void getFeedList(Model m) {
			FeedVO vo = new FeedVO();
			List<Object[]> list = feedService.getFeedList(vo);
			
			m.addAttribute("feedList",list);
		}

		// 피드 상세보기
		@RequestMapping("/MyFeedModal")
		public void myFeedModal(FeedVO vo, Model m, HttpSession session) {
			System.out.println(vo.getFeNo()+"@@@@@@@@@@");
			m.addAttribute("myfeedmodal", feedService.getFeedModal(vo));
			m.addAttribute("feedimg", feedService.getFeedModalimg(vo));
			boolean result=false;
			// 댓글 보기
			List<FeedCommentVO> list = feedcommService.getFeComm(vo.getFeNo());
			m.addAttribute("feedcomm",list);
			System.out.println(">>>>>"+list.size());
			
			// 좋아요 확인
			MemberVO mem = (MemberVO)session.getAttribute("user");
			if(mem != null)
				result = feedService.likeFeedCheck(vo.getFeNo(), mem.getMemId());
			System.out.println("@@@@@@댓글몇개니@@"+result);
			if(result) {
				m.addAttribute("likeCheck", 1);
			} else {
				m.addAttribute("likeCheck", 0);
			}
		}

		// 피드 댓글 등록
		@RequestMapping("/insertFeComm")
		@ResponseBody
		public FeedCommentVO insertFeComm(FeedCommentVO fevo) {
			return feedcommService.insertFeComm(fevo);
		}
		
		@RequestMapping("/insertChildFeComm")
		@ResponseBody
		public FeedCommentVO insertChildFeComm(FeedCommentVO fevo) {
			return feedcommService.insertChildFeComm(fevo);
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
		
		// 좋아요 기능
		@RequestMapping("/likeFeed")
		@ResponseBody
		public String likeFeed(String userId, Integer feNo, Model m) {
			System.out.println(userId + "" + feNo);
			String bool="false";
			boolean result = feedService.likeFeed(userId, feNo);
			if(result) {
				m.addAttribute("likeCheck", 1);
				bool="true";
			} else {
				m.addAttribute("likeCheck", 0);
			}
			return bool;
		}

		
	// ------------------------- 메인피드
		// 메인피드 목록 출력
		@RequestMapping("/MainFeed")
		public void getMainFeedList(Model m) {
			FeedVO vo = new FeedVO();
			List<Object[]> mainlist = mainfeedservice.getMainFeedList(vo);
			
			m.addAttribute("mainfeedList",mainlist);
		}
		
		// 메인피드 상세보기
		@RequestMapping("/MainFeedModal")
		public void MainFeedModal(FeedVO vo, Model m) {
			System.out.println("잘넘어오니 : "+ vo);
			m.addAttribute("mainfeedmodal", mainfeedservice.MainFeedModal(vo));
			m.addAttribute("mainfeedimg", mainfeedservice.MainFeedModalimg(vo));
			
			// 댓글 보기
			List<FeedCommentVO> list = feedcommService.getFeComm(vo.getFeNo());
			m.addAttribute("feedcomm",list);
			System.out.println(">>>>>"+list.size());			
		}
		
		// 메인피드 좋아요 기능
		@RequestMapping("/likeMainFeed")
		@ResponseBody
		public String likeMainFeed(String userId, Integer feNo, Model m) {
			System.out.println(userId + "" + feNo);
			String bool="false";
			boolean result = feedService.likeFeed(userId, feNo);
			if(result) {
				m.addAttribute("likeCheck", 1);
				bool="true";
			} else {
				m.addAttribute("likeCheck", 0);
			}
			return bool;
		}
		
}






















