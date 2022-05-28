package com.coobby.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/search")
public class searchController {
	
	@RequestMapping("searchpage")
	public String searchpage() {
		return "/user/search/searchpage";
	}
	
	@RequestMapping("searchresultpage")
	public String searchresultpage() {
		return "/user/search/searchresultpage";
	}
	
	
}