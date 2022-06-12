package com.coobby.user.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("/mainpage")
	public void mainPage(Model m) {
		m.addAttribute("topRecipe", mainService.mainTopRecipeList());		//조회수 top7 리스트
		m.addAttribute("recentRecipe", mainService.mainRecentRecipeList()); //최근 레시피 리스트
		m.addAttribute("feedList", mainService.mainRandomFeed());			//랜덤 피드 리스트
	}
	
}
