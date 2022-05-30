package com.coobby.user.feed;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.filechooser.FileSystemView;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;

@Controller
@RequestMapping("/user/feed")
public class FeedController {
	
	@Autowired
	private FeedService feedService;

	
		// 마이피드 목록 출력
		@RequestMapping("/MyFeed")
		public void getFeedList(Model m) {
			FeedVO vo = new FeedVO();
			List<FeedVO> list = feedService.getFeedList(vo);
			
			m.addAttribute("feedList",list);
		}

		// 마이피드 상세보기
		@RequestMapping("/MyFeedModal")
		public void MyFeedModal(FeedVO vo, Model m) {
			m.addAttribute("myfeedmodal", feedService.getFeedModal(vo));
		}
		
		
		@RequestMapping("/insertFeed")
		public void insertFeed() {
			
		}
		

		// 피드 작성페이지
		@RequestMapping("/saveFeed")
		public String saveFeed(FeedVO vo) {			
			
			// 파일 업로드
//			FeedImageVO fvo , HttpServletRequest request, @RequestPart MultipartFile uploadfiles => feedVO 괄호 안에 들어갈 것들
//			FeedImageVO imgvo = new FeedImageVO();
//			
//			String originFileName = uploadfiles.getOriginalFilename();
//			String originFileNameExtenstion = FilenameUtils.getExtension(originFileName).toLowerCase();
//			File storedFile;
//			String storedFileName;
//			String FileUrl = "C:/coobby/src/main/resoures/static/user/Feed/images/";
//			
//			do {
//				storedFileName = RandomStringUtils.randomAlphanumeric(32) + "." + originFileNameExtenstion;
//				storedFile = new File(FileUrl + storedFileName);
//			} while (storedFile.exists());
//			
//			storedFile.getParentFile().mkdirs();
//			uploadfiles.transferTo(storedFile);
//			
//			imgvo.setFeStoredImage(storedFileName);
//			imgvo.setFeOriginImage(originFileName);
//			
//			feedService.insertFeed(vo, imgvo);
			
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
			List<FeedVO> list = feedService.getFeedList(vo);
			
			m.addAttribute("feedList",list);
		}
		
		// 메인피드 상세보기
		@RequestMapping("/MainFeedModal")
		public void MainFeedModal(FeedVO vo, Model m) {
			m.addAttribute("feedmodal", feedService.getFeedModal(vo));
		}
		
		

}
