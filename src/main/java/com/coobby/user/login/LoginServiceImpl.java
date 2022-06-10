package com.coobby.user.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MemberRepository;
import com.coobby.vo.MemberVO;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{
	@Autowired
	private MemberRepository memRepo;
	
//	public Object[] checkLogin(MemberVO vo) {
//		return memRepo.loginCheck(vo.getMemId(), vo.getMemPass());
//	}
//
//	@Override
//	public void idcheck(MemberVO vo) { 
//		//return loginRepo.checklogin(vo);
//	}
//
	@Override
	public void logout(MemberVO vo) {
		//return loginRepo.logout(vo);
	}


	@Override
	public MemberVO loginCheck(String memId, String memPass) {
		return memRepo.loginCheck(memId, memPass);
	}


	@Override
	public MemberVO checkNickname(MemberVO vo) {
		 return memRepo.checkNickname(vo.getMemNickname());
	}


	@Override
	public MemberVO findByMemNickname(String nickname) {
		return memRepo.findByMemNickname(nickname);
	}


	/*
	 * @Override public MemberVO userinsert(MemberVO vo) { return
	 * memRepo.userinsert(vo); }
	 */



}
