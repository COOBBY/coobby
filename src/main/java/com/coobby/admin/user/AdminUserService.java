package com.coobby.admin.user;

import java.util.List;

import com.coobby.vo.MemberVO;

public interface AdminUserService {

	//회원 관리 목록
	public List<MemberVO> adminMemberList();
	
}
