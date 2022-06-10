package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.Recipe_imageVO;

public interface Recipe_imageRepository extends CrudRepository<Recipe_imageVO, Integer> {
	
	@Query(value="SELECT re_stored_image, re_origin_image, re_file_size, re_seq, re_no, re_split  "
			+ "FROM RECIPE_IMAGE  "
			+ "WHERE re_no = ?1 and re_split = 1  "
			+ "ORDER BY re_seq	 ",
			nativeQuery=true)
	List<Recipe_imageVO> getImage(int reNo);
	
	@Query(value="SELECT re_stored_image, re_origin_image, re_file_size, re_seq, re_no, re_split  "
			+ "FROM RECIPE_IMAGE  "
			+ "WHERE re_no = ?1 and re_split = 0  "
			+ "ORDER BY re_seq	 ",
			nativeQuery=true)
	List<Recipe_imageVO> getResultImage(int reNo);
}
