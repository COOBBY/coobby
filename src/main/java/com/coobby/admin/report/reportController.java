package com.coobby.admin.report;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.vo.ReportVO;
@Controller
	@RequestMapping("/admin/Report")
public class reportController {
	
	@Autowired
	private ReportService reportService;

		//댓글 신고 목록 + 게시글 신고 목록
		@RequestMapping("report")
		public String report(Model m) {
			List<ReportVO> coList = reportService.reportCommentList();
			List<ReportVO> boList = reportService.reportBoardList();
			m.addAttribute("commList", coList);
			m.addAttribute("boardList", boList);
			return "/admin/Report/report";
		}
		
		//댓글 신고 상세보기 
		@RequestMapping("reportCommentDetail")
		public String reportCommentDetail(Model m, ReportVO vo) {
			m.addAttribute("coList", reportService.getReportComment(vo));
			return "/admin/Report/reportCommentDetail";
		}
		
		//게시글 신고 상세보기
		@RequestMapping("reportBoardDetail")
		public String reportBoardDetail(Model m, ReportVO vo) {
			m.addAttribute("boList", reportService.getReportComment(vo));
			return "/admin/Report/reportBoardDetail";
		}
		
		//신고 처리
		@RequestMapping("reportupdate")
		public String reportUpdate(ReportVO vo) {
			System.out.println(vo);
			
			reportService.reportCommentUpdate(vo);
			return "redirect:/admin/Report/report";
		}
		
		//
	

	}
	


