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

	@Override
	public void insertQnA(QnAVO vo) {
		qnaRepo.save(vo);
	}

	@Override
	public QnAVO getQnA(QnAVO vo) {
		return qnaRepo.findById(vo.getQnaNo()).get();
	}

	@Override
	public List<QnAVO> getQnAList() {
		
		return (List<QnAVO>) qnaRepo.findAll();
	}

	@Override
	public void insertsaveQnA(QnAVO vo) {
		QnAVO result = qnaRepo.findById(vo.getQnaNo()).get();
		result.setAdate(vo.getAdate());
		result.setAcontent(vo.getAcontent());
		result.setAcheck(1);
		qnaRepo.save(result);
		
	}
	
	

}
