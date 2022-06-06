package com.coobby.admin.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.AdminUserRepository;
import com.coobby.vo.MemberVO;

@Service
public class AdminUserServiceImpl implements AdminUserService{

	@Autowired
	private AdminUserRepository adminUserRepo;
	
	//회원 관리 목록
	@Override
	public List<MemberVO> adminMemberList() {
		return adminUserRepo.OrderByMemCreatetimeDesc();
	}

	
}
