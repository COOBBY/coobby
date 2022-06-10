package com.coobby.admin.Announce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.user.board.BoardService;
import com.coobby.vo.BoardVO;

@Controller
@RequestMapping("/admin")
public class adminAnnounceController {

	@Autowired
	BoardService boardService;
	@Autowired
	AnnounceService announceService;
	
	@RequestMapping("Announce/insertpage")
	public String insertpage(BoardVO vo) {
		return "/admin/Announce/insertpage";
	}
	
	@RequestMapping("Announce/Boardsave")
	public String Boardsave(BoardVO vo, MultipartFile[] file) {
		System.out.println("중요도 체크"+vo.getBoardImp());
		if(vo.getBoardImp()==null) {
			vo.setBoardImp(0);
		}
		announceService.insertBoard(vo, file);
		return "redirect:/admin/Announce/listpage";
	}
	
	
	@RequestMapping("Announce/listpage")
	public String listpage(Model m) {
		m.addAttribute("boardList",boardService.getBoardList());
		return "/admin/Announce/listpage";
	}
	
	@RequestMapping("Announce/detailpage")
	public String detailpage(BoardVO vo, Model m) {
		System.out.println(vo.getBoardNo());
		List<Object[]> result =  announceService.selectByPK(vo);
		
		m.addAttribute("oneBoard", result);
		return "/admin/Announce/detailpage";
	}
	
	@RequestMapping("Announce/updateBoard")
	public String updateBoard(BoardVO vo) {
		System.out.println(vo.getBoardContent());
		System.out.println(vo.getBoardTitle());
		announceService.updateBoard(vo);
		return "redirect:listpage";
	}
	
	@RequestMapping("Announce/deleteBoard")
	public String deleteBoard(BoardVO vo) {
		announceService.deleteBoard(vo);
		return "redirect:listpage";
	}
	
	
}