package com.coobby.user.login;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.repository.MemberRepository;
import com.coobby.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	// 회원가입 시 사용자가 회원가입 한 날짜 DB에 삽입
	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);

	@Autowired
	private MemberRepository memRepo;
	
	// 회원가입 시 사용자 닉네임 중복여부 확인
	public MemberVO checkNickname(String nickname) {
		return memRepo.checkNickname(nickname);	
	}

	
	// 회원가입 시 사용자가 입력한 회원정보 및 이미지 파일 DB에 삽입
	@Override
	public void userinsert(MemberVO vo, MultipartFile file) {
		vo.setMemCreatetime(date.format(today));
		vo.setMemAuth(1);
		vo.setFile(file);
		memRepo.save(vo);
		System.out.println(vo.toString()+"***"); 
	}
}
