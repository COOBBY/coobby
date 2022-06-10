package com.coobby.user.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.user.QnA.QnAService;
import com.coobby.vo.QnAVO;


@Controller
@RequestMapping("/user")
public class MypageController {
	
	@Autowired
	QnAService qnaService;
	
	@RequestMapping("mypage/Membersignout")
	public String Membersignout() {
		return "/user/mypage/Membersignout";
	}
	
	@RequestMapping("mypage/Memberupdate")
	public String Memberupdate() {
		return "/user/mypage/Memberupdate";
	}
	
//	@GetMapping("mypage/Memberupdate")
//	public String updateInfo(Model model, HttpSession session) {
//		String sessionId = (String)session.getAttribute("sessionId");
//		Member member = memberService.selectMember(sessionId);
//		model.addAttribute("member", member);
//		return "/user/mypage/Memberupdate";
//	}

	
	@RequestMapping("mypage/Memberpasswordcheck")
	public String Memberpasswordcheck() {
		return "/user/mypage/Memberpasswordcheck";
	}
	
	@RequestMapping("mypage/MemberFavorites")
	public String MemberFavorites() {
		return "/user/mypage/MemberFavorites";
	}
	
	@RequestMapping("mypage/inquery")
	public String inquery(Model m) {
		List<QnAVO> result = qnaService.getQnAList();
		m.addAttribute("qnaList",result);
		System.out.println(result);
		return "/user/mypage/inquery";
	}
	
	@RequestMapping("mypage/inqueryinsert")
	public String inqueryinsert() {
		return "/user/mypage/inqueryinsert";
	}
	
	
	@RequestMapping("/mypage/nav-announce")
	public String BoardList_2() {
		return "/user/Announce/Boardlist";
	}	
	
	@RequestMapping("/mypage/save")
	public String inquery(QnAVO vo) {
		if(vo.getQcheck()==null) {
			vo.setQcheck(0);
		}
		qnaService.insertQnA(vo);
		return "redirect:/user/mypage/inquery";
	}
	
	
	
}
