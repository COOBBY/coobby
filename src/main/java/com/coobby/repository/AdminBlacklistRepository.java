package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.MemberVO;

public interface AdminBlacklistRepository extends CrudRepository<MemberVO, String>{

	@Query(value="select * from member where report_cnt=3 order by mem_createtime desc"
			, nativeQuery = true)
	List<MemberVO> adminBlacklist();
	
}
