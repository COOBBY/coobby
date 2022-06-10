package com.coobby.admin.QnA;

import java.util.List;

import com.coobby.vo.QnAVO;

public interface QnAService {

		//qna 등록
		void insertQnA(QnAVO vo);
		
		//qna 상세 내용 보기
		QnAVO getQnA(QnAVO vo);
		
		
		List<QnAVO> getQnAList();
		
		void insertsaveQnA(QnAVO vo);
		

}
