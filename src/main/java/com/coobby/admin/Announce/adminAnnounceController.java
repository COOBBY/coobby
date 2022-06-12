package com.coobby.admin.Announce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.user.board.BoardService;
import com.coobby.vo.BoardImageVO;
import com.coobby.vo.BoardVO;

@Controller
@RequestMapping("/admin")
public class adminAnnounceController {

	@Autowired
	BoardService boardService;
	@Autowired
	AnnounceService announceService;
	
	// 공지사항 등록하기 페이지
	@RequestMapping("Announce/insertpage")
	public String insertpage(BoardVO vo) {
		return "/admin/Announce/insertpage";
	}
	
	// 공지사항 등록하였을 때 저장하는 페이지
	@RequestMapping("Announce/Boardsave")
	public String Boardsave(BoardVO vo, MultipartFile[] file) {
		System.out.println("중요도 체크"+vo.getBoardImp());
		if(vo.getBoardImp()==null) {
			vo.setBoardImp(0);
		}
		announceService.insertBoard(vo, file);
		return "redirect:/admin/Announce/listpage";
	}
	
	// 공지사항 리스트 페이지
	@RequestMapping("Announce/listpage")
	public String listpage(Model m) {
		m.addAttribute("boardList",boardService.getBoardList());
		return "/admin/Announce/listpage";
	}
	
	// 공지사항 수정페이지
	@RequestMapping("Announce/detailpage")
	public String detailpage(BoardVO vo, Model m) {
		System.out.println(vo.getBoardNo());
		BoardVO result =  announceService.selectByPK(vo);
		List<BoardImageVO> imageList = announceService.getBoardImages(vo);
		
		m.addAttribute("oneBoard", result);
		m.addAttribute("imageList", imageList);
		return "/admin/Announce/detailpage";
	}
	
	// 공지사항 수정하고 목록페이지로 가기
	@RequestMapping("Announce/updateBoard")
	public String updateBoard(BoardVO vo, MultipartFile[] file) {
		System.out.println(vo.getBoardContent());
		System.out.println(vo.getBoardTitle());
		announceService.updateBoard(vo, file);
		return "redirect:listpage";
	}
	
	// 공지사항 삭제하고 목록페이지로 가기
	@RequestMapping("Announce/deleteBoard")
	public String deleteBoard(BoardVO vo) {
		announceService.deleteBoard(vo);
		return "redirect:listpage";
	}
	
	
}