package com.coobby.user.mypage;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MemberRepository;
import com.coobby.vo.MemberVO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MemberRepository memRepo;
	
	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);
	
	// 회원정보 수정했을 때 비밀번호와 닉네임 전화번호 변경 가능
	@Override
	public void update(MemberVO vo) {
		MemberVO result = memRepo.findById(vo.getMemId()).get();
		result.setMemPass(vo.getMemPass());
		result.setMemNickname(vo.getMemNickname());
		result.setMemTel(vo.getMemTel());
		memRepo.save(result);
	}
	
	// 회원정보 탈퇴할때 delete_time 현재날짜로 나오게 하기
	@Override
	public void delete(MemberVO vo) {
		MemberVO result = memRepo.findById(vo.getMemId()).get();
		result.setMemDeletetime(date.format(today));
		memRepo.save(result);
		
	}

	/*
	 * 마이페이지 정보 수정 페이지 접근
	 */
	@Override
	public boolean checkPass(MemberVO vo) {
		MemberVO temp = memRepo.findById(vo.getMemId()).get();
		String tempPass = temp.getMemPass();
		if(tempPass.equals(vo.getMemPass())) {
			// 비밀번호 일치
			return true;
		}
		
		// 비밀번호 불일치
		return false;
	}

	// 회원정보 확인할때 아이디 값 찾아서 확인하기
	@Override
	public MemberVO getMember(String memId) {
		return memRepo.findById(memId).get();
		
	}

	// 닉네임 체크여부 확인
	@Override
	   public MemberVO checkNickname(MemberVO vo) {
	       return memRepo.checkNickname(vo.getMemNickname());
	   }


	   @Override
	   public MemberVO findByMemNickname(String nickname) {
	      return memRepo.findByMemNickname(nickname);
	   }

	@Override
	public MemberVO getMemPass(String memPass) {
		
		return null;
	}	

}
