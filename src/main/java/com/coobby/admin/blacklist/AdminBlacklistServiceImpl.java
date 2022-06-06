package com.coobby.admin.blacklist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.AdminBlacklistRepository;
import com.coobby.vo.MemberVO;

@Service
public class AdminBlacklistServiceImpl implements AdminBlacklistService {

	@Autowired
	private AdminBlacklistRepository adminBlacklistRepo;
	
	//블랙리스트 관리 목록
	@Override
	public List<MemberVO> adminBlacklist() {

		return adminBlacklistRepo.adminBlacklist();
	}

	//블랙리스트 해제
	@Override
	public void adminUpdateBlaklist(MemberVO vo) {
		// 블랙리스트 아이디의 신고 처리 횟수 2로 변경
		MemberVO result = adminBlacklistRepo.findById(vo.getMemId()).get();
		
		result.setReportCnt(2);
		adminBlacklistRepo.save(result);
		
		
		
	}

}
