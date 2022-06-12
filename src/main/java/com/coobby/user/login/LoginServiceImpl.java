package com.coobby.user.login;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MemberRepository;
import com.coobby.vo.MemberVO;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{
	@Autowired
	private MemberRepository memRepo;
	
	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);
	
	// 사용자 회원가입 날짜 (mem_createtime) 조회
	@Override                       
	public void todayjoin() {
		System.out.println(date.format(today));
	}
	
	// 사용자 로그아웃
	@Override
	public void logout(MemberVO vo) {
		//return loginRepo.logout(vo);
	}

	// 사용자 아이디 / 비밀번호 일치여부 확인
	@Override
	public MemberVO loginCheck(String memId, String memPass) {
		return memRepo.loginCheck(memId, memPass);
	}

	// 사용자 닉네임 중복확인
	@Override                       
	public MemberVO checkNickname(MemberVO vo) {
		 return memRepo.checkNickname(vo.getMemNickname());
	}

	// 사용자 닉네임 조회
	@Override                      
	public MemberVO findByMemNickname(String nickname) {
		return memRepo.findByMemNickname(nickname);
	}
	



}
