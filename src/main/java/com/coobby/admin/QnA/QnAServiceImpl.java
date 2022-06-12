package com.coobby.admin.QnA;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.QnARepository;
import com.coobby.vo.QnAVO;

@Service("QnAService")
public class QnAServiceImpl implements QnAService{
	@Autowired
	private QnARepository qnaRepo;

	// QnA 등록하여 저장하기
	@Override
	public void insertQnA(QnAVO vo) {
		qnaRepo.save(vo);
	}
	
	// QnA 상세보기
	@Override
	public QnAVO getQnA(QnAVO vo) {
		return qnaRepo.findById(vo.getQnaNo()).get();
	}
	
	// QnA 리스트 
	@Override
	public List<QnAVO> getQnAList() {
		
		return (List<QnAVO>) qnaRepo.findAll();
	}
	
	// QnA 등록하고 저장하는 페이지
	@Override
	public void insertsaveQnA(QnAVO vo) {
		QnAVO result = qnaRepo.findById(vo.getQnaNo()).get();
		result.setAdate(vo.getAdate());
		result.setAcontent(vo.getAcontent());
		result.setAcheck(1);
		qnaRepo.save(result);
		
	}
	
	

}
