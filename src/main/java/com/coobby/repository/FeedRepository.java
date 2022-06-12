package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.coobby.vo.FeLoveVO;
import com.coobby.vo.FeedVO;
import com.coobby.vo.MemberVO;

@Repository
public interface FeedRepository extends CrudRepository<FeedVO, Integer> {
	
	List<FeedVO> findByfeRegdate(String format);		//당일 등록한 피드 리스트 반환

	@Query(value="select *  "
			+ "from feed f join feed_image fi  "
			+ "	on f.fe_no = fi.fe_no "
			+ "where f.fe_no = :fe_no "
			+ "order by fe_seq ", nativeQuery = true)
	List<Object[]> detailFeed(@Param(value = "fe_no") Integer feNo);
	
	@Query(value=" WITH RECURSIVE cte AS "
			+ " ( SELECT :startDate AS d "
			+ "   UNION all "
			+ "   SELECT DATE_ADD(d, INTERVAL 1 day)  AS d "
			+ "   FROM cte "
			+ "   WHERE d < :endDate) "
			+ " SELECT "
			+ "   DATE_FORMAT(c.d, '%m-%d') AS day,"
			+ "   IFNULL(m.feCnt,0) feedCount "
			+ " FROM cte c"
			+ "   LEFT OUTER JOIN ("
			+ "      SELECT DATE_FORMAT(fe_regdate, '%m-%d') day, COUNT(fe_no) feCnt "
			+ "      FROM FEED "
			+ "      GROUP BY day "
			+ "      ) m "
			+ "   ON date_format(c.d, '%m-%d') = m.day", nativeQuery=true)
	List<Object[]> rangeFeedCnt(@Param("startDate") String startDate, @Param("endDate") String endDate);	
	//ajax로 기간을 설정한 startDate와 endDate를 기준으로 값을 가져옴 
	
	@Query(value="SELECT t.fe_no, t.fe_stored_image "
			+ "FROM ( "
			+ "	select row_number() over() rownum, f.fe_no, fi.fe_stored_image, m.report_cnt "
			+ "	from feed f right outer join feed_image fi "
			+ "	on f.fe_no = fi.fe_no join member m on f.mem_id = m.mem_id "
			+ "    group by f.fe_no "
			+ "	) t "
			+ "where t.report_cnt < 3 or t.report_cnt is null "
			+ "order by rand() limit 9", nativeQuery=true)
	List<Object[]> mainRandomFeed();

}
