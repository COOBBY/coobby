package com.coobby.admin.report;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MemberRepository;
import com.coobby.repository.ReportRepository;
import com.coobby.vo.MemberVO;
import com.coobby.vo.ReportVO;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private ReportRepository reportRepo;
	
	@Autowired
	private MemberRepository memRepo;
	
	
	
	
	//신고 댓글 목록
	@Override
	public List<ReportVO> reportCommentList() {
		
		return reportRepo.reportCommentList();
	}
	
	//신고 게시글 목록
	@Override
	public List<ReportVO> reportBoardList() {

		return reportRepo.reportBoardList();
	}

	//신고 댓글 상세보기
	@Override
	public ReportVO getReportComment(ReportVO vo) {
		return reportRepo.findById(vo.getReportNo()).get();
	}

	//신고 처리 
	@Override
	public void reportCommentUpdate(ReportVO vo) {
		//report 테이블 신고 처리 변경
		ReportVO result = reportRepo.findById(vo.getReportNo()).get();
		result.setReportApply(vo.getReportApply());
		reportRepo.save(result);
		
		System.out.println(vo);
		//member 테이블 신고당한 횟수 변경 
		MemberVO mem = memRepo.findById(result.getReportSusid()).get();
		
		// 일반 신고 처리
		if (result.getReportApply() == 1) {
			
			mem.setReportCnt(mem.getReportCnt()+1);
		} 
		// 블랙리스트 처리
		else {
			mem.setReportCnt(3);
		}
		memRepo.save(mem);
		
		  
		
	}

}
