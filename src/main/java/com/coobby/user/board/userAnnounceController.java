package com.coobby.user.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.vo.BoardVO;

@Controller
@RequestMapping("/user/Announce")
public class userAnnounceController {
	
	@Autowired
	BoardService boardService;
	
	// 사용자 공지사항 목록페이지
	@RequestMapping("Boardlist")
	public String Boardlist(Model m) {
		m.addAttribute("boardList",boardService.getBoardList());
		return "/user/Announce/Boardlist";
	}
	
	// 사용자 공지사항 제목쪽 눌렀을 때 상세페이지로 이동
	@RequestMapping("Boarddetail")
	public String Boarddetail(BoardVO vo, Model m) {
		BoardVO result = boardService.getBoard(vo);
		m.addAttribute("board",result);
		return "/user/Announce/Boarddetail";
	}
	
}
