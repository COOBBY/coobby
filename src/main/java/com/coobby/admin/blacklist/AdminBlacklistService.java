package com.coobby.admin.blacklist;

import java.util.List;

import com.coobby.vo.MemberVO;

public interface AdminBlacklistService {

	// 블랙리스트 목록
	public List<MemberVO> adminBlacklist();
	
	//블랙리스트 해제
	public void adminUpdateBlaklist(MemberVO vo);
}
