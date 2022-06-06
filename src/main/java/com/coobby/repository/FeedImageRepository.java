package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.FeedImageVO;
import com.coobby.vo.FeedVO;

public interface FeedImageRepository extends CrudRepository<FeedImageVO, String> {
	
	@Query(value="SELECT f.fe_no, f.fe_title, f.mem_id, fimg.fe_stored_image "
			+ " FROM feed_image fimg left outer JOIN feed f "
			+ " on fimg.fe_no = f.fe_no "
			+ " left join member m on f.mem_id = m.mem_id "
			+ "where m.report_cnt <3 or m.report_cnt is null "
			+ "group by f.fe_no", nativeQuery=true)
	List<Object[]> FeedImage();

	//List<FeedImageVO> findByfeNo(Integer feNo);
	List<FeedImageVO> findByfeed(FeedVO vo);

}
