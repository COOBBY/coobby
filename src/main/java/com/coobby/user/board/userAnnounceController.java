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
	
	@RequestMapping("Boardlist")
	public String Boardlist(Model m) {
		m.addAttribute("boardList",boardService.getBoardList());
		return "/user/Announce/Boardlist";
	}
	
	@RequestMapping("Boarddetail")
	public String Boarddetail(BoardVO vo, Model m) {
		BoardVO result = boardService.getBoard(vo);
		m.addAttribute("board",result);
		return "/user/Announce/Boarddetail";
	}
	
}
