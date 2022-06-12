package com.coobby.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.coobby.vo.RecipeVO;

public interface RecipeRepository extends CrudRepository<RecipeVO, Integer>{
	public List<RecipeVO> findByReCreatetime(String currentDate);
	
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
			+ "	group by l.re_no, ri.re_stored_image "
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
			+ "    group by re_no, ri.re_stored_image "
			+ "	) t  "
			+ " where t.rownum <=6", nativeQuery=true)
	public List<Object[]> mainRecentRecipeList();
	
	@Query(value="select r.re_no, r.re_title, r.re_content, r.re_createtime, i.re_stored_image, m.mem_nickname  "
			+ "from recipe r left outer join recipe_image i  "
			+ "on r.re_no = i.re_no  "
			+ "left outer join member m "
			+ "on r.mem_id = m.mem_id  "
			+ "where re_split = 0 and re_seq = 1 "
			+ "order by r.re_no  ", nativeQuery=true)
	public List<Object[]> getRecipeList(Pageable pageable);
	
	@Query(value="select r.re_no, r.re_title, r.re_content, r.re_createtime, i.re_stored_image, m.mem_nickname  "
			+ "from recipe r left outer join recipe_image i  "
			+ "on r.re_no = i.re_no  "
			+ "left outer join member m  "
			+ "on r.mem_id = m.mem_id  "
			+ "where i.re_split = 0 and i.re_seq = 1  and r.how_code = ?1  "
			+ "order by r.re_no  ", nativeQuery=true)
	public List<Object[]> getRecipeHowList(Pageable pageable, Integer howCode);
	
	@Query(value="select r.re_no, r.re_title, r.re_content, r.re_createtime, i.re_stored_image, m.mem_nickname  "
			+ "from recipe r left outer join recipe_image i  "
			+ "on r.re_no = i.re_no  "
			+ "left outer join member m  "
			+ "on r.mem_id = m.mem_id  "
			+ "where i.re_split = 0 and i.re_seq = 1 and r.ingr_code = ?1  "
			+ "order by r.re_no  ", nativeQuery=true)
	public List<Object[]> getRecipeIngrList(Pageable pageable, Integer ingrCode);
	
	@Query(value="select r.re_no, r.re_title, r.re_content, r.re_createtime, i.re_stored_image, m.mem_nickname  "
			+ "from recipe r left outer join recipe_image i  "
			+ "on r.re_no = i.re_no  "
			+ "left outer join member m  "
			+ "on r.mem_id = m.mem_id  "
			+ "where i.re_split = 0 and i.re_seq = 1 and r.kind_code =?1  "
			+ "order by r.re_no  ", nativeQuery=true)
	public List<Object[]> getRecipeKindList(Pageable pageable, Integer kindCode);
	
	@Query(value="select r.re_no, r.re_title, r.re_content, r.re_createtime, i.re_stored_image, m.mem_nickname  "
			+ "from recipe r left outer join recipe_image i  "
			+ "on r.re_no = i.re_no  "
			+ "left outer join member m  "
			+ "on r.mem_id = m.mem_id  "
			+ "where i.re_split = 0 and i.re_seq = 1 and r.situ_code =?1  "
			+ "order by r.re_no  ", nativeQuery=true)
	public List<Object[]> getRecipeSituList(Pageable pageable, Integer situCode);
	
	@Query(value="select COUNT(*) cnt "
			+ "from (select r.re_no  "
			+ "	from recipe r left outer join recipe_image i  "
			+ "	on r.re_no = i.re_no  "
			+ "	left outer join member m  "
			+ "	on r.mem_id = m.mem_id  "
			+ "	where i.re_split = 0 and i.re_seq = 1 and r.how_code = ?1) list  ",
			nativeQuery=true)
	public int getHowPageNum(Integer howCode);
	
	@Query(value="select COUNT(*) cnt "
			+ "from (select r.re_no  "
			+ "	from recipe r left outer join recipe_image i  "
			+ "	on r.re_no = i.re_no  "
			+ "	left outer join member m  "
			+ "	on r.mem_id = m.mem_id  "
			+ "	where i.re_split = 0 and i.re_seq = 1 and r.ingr_code = ?1) list  ",
			nativeQuery=true)
	public int getIngrPageNum(Integer ingrCode);
	
	@Query(value="select COUNT(*) cnt "
			+ "from (select r.re_no  "
			+ "	from recipe r left outer join recipe_image i  "
			+ "	on r.re_no = i.re_no  "
			+ "	left outer join member m  "
			+ "	on r.mem_id = m.mem_id  "
			+ "	where i.re_split = 0 and i.re_seq = 1 and r.kind_code = ?1) list  ",
			nativeQuery=true)
	public int getKindPageNum(Integer kindCode);
	
	@Query(value="select COUNT(*) cnt "
			+ "from (select r.re_no  "
			+ "	from recipe r left outer join recipe_image i  "
			+ "	on r.re_no = i.re_no  "
			+ "	left outer join member m  "
			+ "	on r.mem_id = m.mem_id  "
			+ "	where i.re_split = 0 and i.re_seq = 1 and r.situ_code = ?1) list  ",
			nativeQuery=true)
	public int getSituPageNum(Integer situCode);
	
	@Query(value="select COUNT(*) cnt "
			+ "from (select r.re_no  "
			+ "	from recipe r left outer join recipe_image i  "
			+ "	on r.re_no = i.re_no  "
			+ "	left outer join member m  "
			+ "	on r.mem_id = m.mem_id  "
			+ "	where i.re_split = 0 and i.re_seq = 1) list  ",
			nativeQuery=true)
	public int getPageNum();
	
	@Query(value="select r.re_title, i.re_stored_image  "
			+ "from recipe r left outer join recipe_image i  "
			+ "on r.re_no = i.re_no  "
			+ "where i.re_split = 0 and i.re_seq = 1 and r.re_title like '%?1%'  ", nativeQuery=true)
	public List<Object[]> getRelatedRecipe(String reTitle);
	
	@Query(value="SELECT r.re_no, r.re_title, r.re_content, r.re_createtime, i.re_stored_image, m.mem_nickname  "
			+ " FROM recipe r LEFT OUTER JOIN recipe_image i  "
			+ "	ON r.re_no = i.re_no  "
			+ "	LEFT OUTER JOIN member m  "
			+ " ON r.mem_id = m.mem_id  "
			+ "	LEFT OUTER JOIN cook c  "
			+ "	ON r.re_no = c.re_no  "
			+ "	LEFT OUTER JOIN ingr ingr  "
			+ "	ON c.ingr_code = ingr.ingr_code  "
			+ "	WHERE i.re_split = 0 and i.re_seq = 1 and (r.re_title like %?1% or m.mem_nickname like %?2% or m.mem_name like %?3% or ingr.ingr_name like %?4%)  "
			+ "	ORDER BY r.re_no  ", nativeQuery=true)
	public List<Object[]> getSearchList(String searchKeywordTitle, String searchKeywordNickname, String searchKeywordName, String searchKeywordIngr);
	
}
