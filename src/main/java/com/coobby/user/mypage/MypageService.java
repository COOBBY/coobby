package com.coobby.user.mypage;

import com.coobby.vo.MemberVO;

public interface MypageService {
	
	// 회원정보 수정
	void update(MemberVO vo);
	
	// 회원정보 탈퇴
	void delete(MemberVO vo);
	
	// 비밀번호 체크
	boolean checkPass(MemberVO vo);
	
	// member아이디값 가져오기
	MemberVO getMember(String memId);
	
	// 닉네임 체크
	public MemberVO checkNickname(MemberVO vo);
	
	// 닉네임 중복확인 여부 원래 기존 닉네임과 겹치는지 확인
	public MemberVO findByMemNickname(String nickname);
	
	// 비밀번호 확인
	MemberVO getMemPass(String memPass);
}
