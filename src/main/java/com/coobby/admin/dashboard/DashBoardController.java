package com.coobby.admin.dashboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class DashBoardController {

	@Autowired
	private DashBoardService dashService;

	@RequestMapping("/dashboard")		//dashborad 요청이 들어왔을 때 실행
	public void chartMain(Model m) {
		 m.addAttribute("todayRecipeCnt", dashService.todayRecipe());//당일 레시피 게시 수
		 m.addAttribute("todaySingUpCnt", dashService.todayUser());//당일 가입 수
		 m.addAttribute("todayFeedCnt", dashService.todayFeed());// 당일 피드 게시 수
		 m.addAttribute("ageGroup", dashService.ageGroupSexRate());//연령대별 회원 성비
		 m.addAttribute("feedDate",dashService.recentFeedCnt());//최근 한달 피드 게시 수
		 m.addAttribute("recipeDate",dashService.recentRecipeCnt());//최근 한달 레시피 게시 수
		 m.addAttribute("kktWebCnt", dashService.weekKktWebMemberCnt());//최근 일주 웹가입, kkt가입 여부 수
	}


}
