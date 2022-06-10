package com.coobby.user.QnA;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coobby.user.mypage.MemberService;
import com.coobby.vo.MemberVO;
import com.coobby.vo.QnAVO;

@Controller
@RequestMapping("/user")
public class userQnAController {

	@Autowired
	QnAService qnaService;
	
	@RequestMapping("QnA/QnAlist")
	public String QnAlist(Model m) {
		List<QnAVO> result = qnaService.getQnAList();
		m.addAttribute("qnaList", result);
		return "/user/QnA/QnAlist";
	}
	
	@RequestMapping("QnA/QnAdetail")
	public String QnAdetail(QnAVO vo, Model m) {
		m.addAttribute("qna", qnaService.getQnA(vo));
		return "/user/QnA/QnAdetail";
	}
	
	@RequestMapping("QnA/nav-announce")
	public String BoardList_2() {
	return "/user/QnA/nav-announce";
	}

	@RequestMapping("save")
	public String save() {
		return "/user/QnA/listpage";
	}
	
	@RequestMapping("qnaPasswordCheck")
	@ResponseBody
	public char qnaPasswordCheck(HttpSession session, MemberVO vo, Integer qnaNo) {
		String memberId = (String)session.getAttribute("kim");
		
		char result = 'N';
		MemberVO memVO = qnaService.checkPass(vo, qnaNo);
		if(memVO != null) {
			result = 'Y';
		}
		return result;
	}
	
}
 