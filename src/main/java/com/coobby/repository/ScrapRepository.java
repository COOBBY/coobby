package com.coobby.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.MemberVO;
import com.coobby.vo.ScrapVO;

public interface ScrapRepository extends CrudRepository<ScrapVO,Integer>{
	
	//즐겨찾기 목록
	@Query(value="select r.re_no re_no, r.re_title re_title, r.mem_id mem_id, i.re_stored_image re_stored_image   "
			+ "From scrap s inner join recipe r   "
			+ "on s.re_no = r.re_no   "
			+ "inner join recipe_image i   "
			+ "on r.re_no = i.re_no   "
			+ "where s.mem_id=?1   "
			+ "group by r.re_no   "
			+ "order by re_split asc  ",
			nativeQuery = true) 
	List<Object[]> scrapList(String memid);
	
}
