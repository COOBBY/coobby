package com.coobby.admin.report;

import java.util.List;

import com.coobby.vo.ReportVO;

public interface ReportService {

	//신고 댓글 목록
	public List<ReportVO> reportCommentList();
	
	//신고 게시글 목록
	public List<ReportVO> reportBoardList();
	
	//신고 댓글 상세보기
	public ReportVO getReportComment(ReportVO vo);
	
	//신고 처리
	public void reportCommentUpdate(ReportVO vo);
}
