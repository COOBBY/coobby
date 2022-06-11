package com.coobby.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.CookVO;

public interface CookRepository extends CrudRepository<CookVO, Integer>{
	
	@Query(value="SELECT c.ingr_count, i.ingr_name, i.ingr_stored_image  "
			+ "FROM cook c inner join ingr i  "
			+ "ON c.ingr_code = i.ingr_code  "
			+ "WHERE c.re_no = ?1  ",
			nativeQuery=true)
	List<Object[]> getingr(int reNo);
	
	@Query(value="select ingr.ingr_name, c.ingr_count, c.cook_no  "
			+ "from cook c left outer join ingr ingr  "
			+ "on c.ingr_code = ingr.ingr_code  "
			+ "where c.re_no = ?1", nativeQuery=true)
	List<Object[]> modifyGetIngr(int reNo);
}
