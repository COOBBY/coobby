package com.coobby.user.login;

import com.coobby.vo.MemberVO;

public interface MemberService {

	MemberVO checkNickname(String nickname);
	
	void userinsert(MemberVO vo);
	
}
