package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.coobby.vo.MemberVO;
import com.coobby.vo.RecipeVO;

public interface MemberRepository extends CrudRepository<MemberVO, String>{
	
	List<RecipeVO> findBymemCreatetime(String date);	//당일 회원가입 수 구하기
	
	@Query(value="SELECT CASE "
			+ "		   WHEN age < 20 THEN '10대' "
			+ "        WHEN age < 30 THEN '20대' "
			+ "        WHEN age < 40 THEN '30대' "
			+ "        WHEN age < 50 THEN '40대' "
			+ "        WHEN age < 60 THEN '50대' "
			+ "        WHEN age < 70 THEN '60대' "
			+ " 	   ELSE '70대' "
			+ "       END AS age_group, "
			+ "       ROUND(count(case when mem_sex='0' Then 0 End)/count(mem_sex)*100) as menCount, ROUND(count(case when mem_sex='1' Then 0 End)/count(mem_sex)*100) "
			+ "       as womenCount "
			+ "FROM (SELECT *, FLOOR(date_format(now(), '%Y')-substring(mem_birth,1,4)) age FROM member) a "
			+ "GROUP BY age_group "
			+ "ORDER BY age_group ", nativeQuery=true)
	List<Object[]> ageGroupSexRate();	//남자와 여자의 연령대별 성 비율 구하는 메소드
	
	
	//로그인 아이디 체크
	@Query(value="SELECT * from member  "
			+ " WHERE mem_id = :memId AND mem_pass = :memPass  ",
			nativeQuery=true)
	MemberVO loginCheck(@Param("memId") String memId, @Param("memPass")String password);

	//닉네임 중복검사
	//SELECT * FROM member WHERE mem_nickname="hm";
	/*
	 * @Query("SELECT m FROM MemberVO m WHERE m.memNickname=:memNickname") MemberVO
	 * checkNickname(String memNickname);
	 */
	
	// 닉네임 중복검사
	@Query(value="SELECT * FROM MEMBER WHERE memNickname=:memNickname", nativeQuery=true)
	MemberVO checkNickname(@Param("memNickname") String memNickname);

	MemberVO findByMemNickname(String nickname);

	/* MemberVO userinsert(MemberVO vo); */
	
	
	
	
	//회원정보 삽입
/*	MemberVO findByMemId(String memid);
	List<MemberVO> findAll();*/
/*
 * @Query(value="INSERT INTO member values())
 */	

	//Object[] checklogin(MemberVO vo);
	
	//세션에 띄울 값 가져오기
	/*
	 * @Query(value="SELECT mem_id, mem_nickname, mem_stored_image from member  " +
	 * " WHERE mem_id = 1? AND mem_pass = 2?  AND mem_stored_image = 3? ",
	 * nativeQuery=true) Object[] loginSession(String memId, String password, String
	 * mem_stored_image);
	 */
	@Query(value="WITH RECURSIVE cte AS "
			+ " (  SELECT DATE_ADD(NOW(), INTERVAL -7 day) AS d "
			+ "   UNION all "
			+ "   SELECT DATE_ADD(d, INTERVAL 1 day)  AS d "
			+ "   FROM cte "
			+ "   WHERE d < DATE_ADD(NOW(), INTERVAL -1 day) ) "
			+ " SELECT  "
			+ "   DATE_FORMAT(c.d, '%m-%d') AS day, "
			+ "   IFNULL(m.kktmember,0) kktmember, "
			+ "   IFNULL(m.webmember,0) webmember "
			+ "FROM cte c "
			+ "   LEFT OUTER JOIN ( "
			+ "      SELECT DATE_FORMAT(mem_createtime, '%m-%d') day,"
			+ "            (select count(*) from member where mem_kkt=1) kktmember, "
			+ "            (SELECT count(*) from member where mem_kkt=0) webmember "
			+ "      FROM member "
			+ "      GROUP BY day "
			+ "      ) m "
			+ "   ON date_format(c.d, '%m-%d') = m.day", nativeQuery=true)
	List<Object[]> weekKktWebMemberCnt();	//한 주당 카카오톡인증 회원가입 수와 웹 메일인증 회원가입 수

	@Query(value="SELECT mem_id, mem_pass FROM member WHERE mem_id=?1 AND mem_pass=?2", nativeQuery=true)
	public MemberVO checkPass(String memId, String memPass);
}
