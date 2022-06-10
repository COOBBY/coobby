package com.coobby.user.mypage;

import com.coobby.vo.MemberVO;

public interface MemberService {
	
	void update(MemberVO vo) throws Exception;
	
	void delete(MemberVO vo) throws Exception;
}
