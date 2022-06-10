package com.coobby.user.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MemberRepository;
import com.coobby.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberRepository memRepo;
	
	public MemberVO checkNickname(String nickname) {
		return memRepo.checkNickname(nickname);	
	}

	@Override
	public void userinsert(MemberVO vo) {
		memRepo.save(vo);
	}
}
