package com.coobby.user.QnA;

import java.util.List;

import com.coobby.vo.MemberVO;
import com.coobby.vo.QnAVO;

public interface QnAService {

	// 사용자 QnA 전체 검색
	List<QnAVO> getQnAList();
	
	// 사용자 QnA 레코드 입력 
	void insertQnA(QnAVO vo);
	
	// 사용자 QnA 수정
	QnAVO updateQnA(QnAVO vo);
	
	// 사용자 QnA 삭제
	void deleteQnA(Integer qnaNo);
	
	// 사용자 QnA 정보 가져오기
	QnAVO getQnA(QnAVO vo);
	
	// 사용자 QnA 비공개일때 비밀번호 입력하고 들어가게 하기
	MemberVO checkPass(MemberVO memVO, Integer qnaNo);
}
