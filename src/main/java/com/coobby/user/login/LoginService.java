package com.coobby.user.login;

import com.coobby.vo.MemberVO;

public interface LoginService {
	


	// 사용자 로그아웃
	public void logout(MemberVO vo);

	// 사용자 로그인 시 아이디/비밀번호 검사
	public MemberVO loginCheck(String memId, String memPass);

	// 사용자 닉네임 중복확인
	public MemberVO checkNickname(MemberVO vo);

	// 사용자 닉네임 조회
	public MemberVO findByMemNickname(String nickname);

	// 사용자 회원가입일 조회(mem_createtime)
	public void todayjoin();
	
}