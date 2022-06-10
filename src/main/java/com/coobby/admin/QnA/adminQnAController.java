package com.coobby.admin.QnA;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.admin.QnA.QnAService;
import com.coobby.vo.QnAVO;

@Controller
@RequestMapping("/admin")
public class adminQnAController {

	@Autowired
	QnAService qnaService;
	
	@RequestMapping("QnA/insertpage")
	public String insertpage(QnAVO vo, Model m) {
		m.addAttribute("qna", qnaService.getQnA(vo));
		return "/admin/QnA/insertpage";
	}
	
	@RequestMapping("QnA/listpage")
	public String listpage(Model m) {
		List<QnAVO> result = qnaService.getQnAList();
		m.addAttribute("qnaList", result);
		return "/admin/QnA/listpage";
	}
	
	@RequestMapping("QnA/qnasave")
	public String qnasave(QnAVO vo) {
		qnaService.insertsaveQnA(vo);
		return "redirect:/admin/QnA/listpage";
	}
	
	
	
}
