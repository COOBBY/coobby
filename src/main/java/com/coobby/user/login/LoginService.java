package com.coobby.user.login;

import com.coobby.vo.MemberVO;

public interface LoginService {
	
//	public Object[] idcheck(MemberVO vo);
//	
//	public Object[] checkLogin(MemberVO vo);
//
//	public MemberVO logout(MemberVO vo);
//	
//	public void checkLogin(MemberVO vo);

	public void logout(MemberVO vo);

	public MemberVO loginCheck(String memId, String memPass);

	public MemberVO checkNickname(MemberVO vo);

	public MemberVO findByMemNickname(String nickname);
	
	/* public MemberVO userinsert(MemberVO vo); */
	
	
	
	/* public MemberVO userinsert(MemberVO vo); */

	 
}