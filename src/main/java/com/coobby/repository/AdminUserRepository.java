package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.MemberVO;

public interface AdminUserRepository extends CrudRepository<MemberVO, String>{

	//회원관리 목록 출력
	List<MemberVO> OrderByMemCreatetimeDesc();
	

	
}
