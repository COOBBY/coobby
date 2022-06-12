package com.coobby.admin.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class CategoryController {

	@Autowired
	private CategoryService cateService;
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {			//기본적인 페이지 이동만을 위한 메소드 {step}에 요청 url이 들어옴
		return "admin/"+step;
	}
	
	@RequestMapping("/category")
	public void categoryManage(Model m) {
		m.addAttribute("kindList",cateService.getKindList());	//카테고리를 출력하기 위해 각 4개의 테이블에서 카테고리 정보를 가져옴
		m.addAttribute("howList",cateService.getHowList());
		m.addAttribute("ingrList",cateService.getIngrList());
		m.addAttribute("situList",cateService.getSituList());
	
	}
	
	
}
