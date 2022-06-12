package com.coobby.admin.QnA;

import java.util.List;

import com.coobby.vo.QnAVO;

public interface QnAService {

		// QnA 등록하기
		void insertQnA(QnAVO vo);
		
		// QnA 상세 내용 보기
		QnAVO getQnA(QnAVO vo);
		
		
		// QnA 리스트 목록 띄우기
		List<QnAVO> getQnAList();
		
		// QnA 등록하여 저장하기
		void insertsaveQnA(QnAVO vo);
		

}
