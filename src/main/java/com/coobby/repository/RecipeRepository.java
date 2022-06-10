package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.coobby.vo.RecipeVO;

public interface RecipeRepository extends CrudRepository<RecipeVO, Integer>{
	public List<RecipeVO> findByReCreatetime(String currentDate);
	
//	@Query(value="SELECT   "
//			+ "FROM cook c inner join ingr i  "
//			+ "ON c.ingr_code = i.ingr_code  "
//			+ "WHERE c.re_no = ?1  ",
//			nativeQuery=true)
//	List<Object[]> getingr(int reNo);
	
	@Query(value=" WITH RECURSIVE cte AS "
			+ " ( SELECT DATE_ADD(NOW(), INTERVAL -30 day) AS d "
			+ "   UNION all "
			+ "   SELECT DATE_ADD(d, INTERVAL 1 day)  AS d "
			+ "   FROM cte "
			+ "   WHERE d < NOW() ) "
			+ " SELECT "
			+ "   DATE_FORMAT(c.d, '%m-%d') AS day,"
			+ "   IFNULL(m.reCnt,0) recipeCount "
			+ " FROM cte c"
			+ "   LEFT OUTER JOIN ("
			+ "      SELECT DATE_FORMAT(re_createtime, '%m-%d') day, COUNT(re_no) reCnt "
			+ "      FROM recipe "
			+ "      GROUP BY day "
			+ "      ) m "
			+ "   ON date_format(c.d, '%m-%d') = m.day", nativeQuery=true)
	public List<Object[]> recentRecipeCnt();

	
	@Query(value=" WITH RECURSIVE cte AS "
			+ " ( SELECT :startDate AS d"
			+ "   UNION all"
			+ "   SELECT DATE_ADD(d, INTERVAL 1 day)  AS d"
			+ "   FROM cte "
			+ "   WHERE d < :endDate "
			+ ") "
			+ " SELECT "
			+ "   DATE_FORMAT(c.d, '%m-%d') AS day, "
			+ "   IFNULL(m.recipeCnt,0) recipeCnt "
			+ " FROM cte c "
			+ "   LEFT OUTER JOIN ( "
			+ "      SELECT DATE_FORMAT(re_createtime, '%m-%d') day, count(*) recipeCnt "
			+ "      FROM recipe "
			+ "      GROUP BY day "
			+ "      ) m "
			+ "   ON date_format(c.d, '%m-%d') = m.day", nativeQuery = true)
	public List<Object[]> rangeRecipeCnt(@Param("startDate") String startDate, @Param("endDate") String endDate);
	
	
	@Query(value="select t.rownum, t.likeCnt, t.re_no, t.re_title, t.re_viewcnt, t.mem_id, t.re_stored_image "
			+ "FROM (select  "
			+ "	row_number() over(order by l.re_no desc) rownum, count(*) as likeCnt ,r.re_no, r.re_title,r.re_viewcnt,r.mem_id, ri.re_stored_image, m.report_cnt "
			+ "	from recipe r join re_love l  "
			+ "	on r.re_no = l.re_no  "
			+ "    left outer join recipe_image ri on r.re_no = ri.re_no "
			+ "    join member m on m.mem_id = r.mem_id "
			+ "    where m.report_cnt < 3 or m.report_cnt is null "
			+ "	group by l.re_no "
			+ "    ) t "
			+ " where t.rownum <=20 "
			+ " ORDER BY RAND() LIMIT 7",nativeQuery = true)
	public List<Object[]> mainTopRecipeList();
	
	@Query(value="SELECT *  "
			+ " FROM (  "
			+ "	select row_number() over(order by r.re_createtime desc) rownum, r.re_no, r.re_title, ri.re_stored_image  "
			+ "	from recipe r right outer join recipe_image ri  "
			+ "	on r.re_no = ri.re_no join member m  "
			+ "    on m.mem_id = r.mem_id "
			+ "	where m.report_cnt < 3 or m.report_cnt is null and ri.re_split = 0 "
			+ "    group by re_no "
			+ "	) t  "
			+ " where t.rownum <=6", nativeQuery=true)
	public List<Object[]> mainRecentRecipeList();
}
