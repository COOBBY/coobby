package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.ReportVO;

public interface ReportRepository extends CrudRepository<ReportVO, Integer>{

	//댓글 신고 목록
	  @Query( value="SELECT * FROM report WHERE report_type = 0 ORDER BY report_date DESC",
			  nativeQuery = true)
	  List<ReportVO> reportCommentList();
	
	//게시글 신고 목록
	  @Query(  value="SELECT * FROM report WHERE report_type = 1 ORDER BY report_date DESC",
			  nativeQuery = true)
	  List<ReportVO> reportBoardList();
	
}
