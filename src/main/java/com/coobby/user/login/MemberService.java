package com.coobby.user.login;

import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.MemberVO;

public interface MemberService {

	// 회원가입 시 사용자 닉네임 중복여부 확인
	MemberVO checkNickname(String nickname);
	
	// 회원가입 시 사용자가 입력한 회원정보 및 이미지 파일 DB에 삽입
	void userinsert(MemberVO vo, MultipartFile file);
	
}
