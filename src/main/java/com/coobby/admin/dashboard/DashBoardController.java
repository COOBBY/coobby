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
	
	@RequestMapping("/dashboard")
	public void chartMain(Model m) {
		 //m.addAttribute("countBoard",dashService.recipeCount());// 총 게시물 수
		 m.addAttribute("todayBoardCnt", dashService.todayRecipe());//당일 게시물 수
		 m.addAttribute("todaySingUpCnt", dashService.todayUser());
		
	}
	
	
}
