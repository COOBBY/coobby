package com.coobby.user.QnA;

import java.util.List;

import com.coobby.vo.MemberVO;
import com.coobby.vo.QnAVO;

public interface QnAService {

	List<QnAVO> getQnAList();
	
	void insertQnA(QnAVO vo);
	
	QnAVO updateQnA(QnAVO vo);
	
	void deleteQnA(Integer qnaNo);
	
	QnAVO getQnA(QnAVO vo);
	
	MemberVO checkPass(MemberVO memVO, Integer qnaNo);
}
