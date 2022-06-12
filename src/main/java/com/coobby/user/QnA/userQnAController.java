package com.coobby.user.QnA;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coobby.user.mypage.MypageService;
import com.coobby.vo.MemberVO;
import com.coobby.vo.QnAVO;

@Controller
@RequestMapping("/user")
public class userQnAController {

	@Autowired
	QnAService qnaService;
	
	// 사용자 QnA 리스트 페이지
	@RequestMapping("QnA/QnAlist")
	public String QnAlist(Model m) {
		List<QnAVO> result = qnaService.getQnAList();
		m.addAttribute("qnaList", result);
		return "/user/QnA/QnAlist";
	}
	
	// 사용자 QnA 상세보기 페이지
	@RequestMapping("QnA/QnAdetail")
	public String QnAdetail(QnAVO vo, Model m) {
		m.addAttribute("qna", qnaService.getQnA(vo));
		return "/user/QnA/QnAdetail";
	}
	
	// 사용자 QnA 네비바 눌렀을 때 QnA 페이지로 들어가기
	@RequestMapping("QnA/nav-announce")
	public String BoardList_2() {
	return "/user/QnA/nav-announce";
	}
	
	// 사용자 QnA 등록할때 저장하여 리스트페이지로 들어가게 하기
	@RequestMapping("save")
	public String save() {
		return "/user/QnA/listpage";
	}
	
	// 사용자 QnA 비공개글일때 비밀번호 누르고 맞으면 들어가게하기
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
 