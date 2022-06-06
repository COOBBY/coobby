package com.coobby.admin.blacklist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.vo.MemberVO;

@Controller
@RequestMapping("/admin/AdminBlacklist")
public class AdminBlacklistController {
	
	@Autowired 
	private AdminBlacklistService adminBlacklistService;
	
	//블랙리스트 목록 출력
	@RequestMapping("adminBlacklist")
	public String getAdminBlacklist(Model m) {
		List<MemberVO> list = adminBlacklistService.adminBlacklist();
		m.addAttribute("blacklist", list);
		return "/admin/AdminBlacklist/adminBlacklist";
	}

	@RequestMapping("blacklistupdate")
	public String updateBlacklist(MemberVO vo) {
		System.out.println(vo);
		
		adminBlacklistService.adminUpdateBlaklist(vo);
		return "redirect:/admin/AdminBlacklist/adminBlacklist";
	}
	
	
}
