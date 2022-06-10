package com.coobby.user.scrap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.vo.MemberVO;

@Controller
@RequestMapping("user")
public class ScrapController {
	
	@Autowired
	private ScrapService scrapService;

	//즐겨찾기 목록
	@RequestMapping("mypage/scrap")
	public String ScrapList(HttpSession session, Model m ) {
		System.out.println("즐겨찾기 실행controller");
		
		//로그인 유무 확인
		//로그인 안하면 로그인 페이지로 돌아가기
		MemberVO id = (MemberVO) session.getAttribute("user");
		if(id == null) return "redirect:/user/login/loginpage";
		
		//로그인 되어있으면 즐겨찾기 목록 나오기
		List<Object[]> objScrapList = scrapService.scrapList(id.getMemId());
		
		List<HashMap> getScrapList = new ArrayList<HashMap>();
		for(Object[] result : objScrapList) {
			HashMap hsm = new HashMap();
			hsm.put("RE_NO", result[0]);
			hsm.put("RE_TITLE", result[1]);
			hsm.put("MEM_ID", result[2]);
			hsm.put("RE_STORED_IMAGE", result[3]);
			getScrapList.add(hsm);
		}
		
		
		m.addAttribute("scrapList", getScrapList);
		System.out.println(getScrapList);
		
		return "user/mypage/MemberFavorites";
		
	}
}
