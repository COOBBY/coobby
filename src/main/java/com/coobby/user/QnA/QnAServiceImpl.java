package com.coobby.user.QnA;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MemberRepository;
import com.coobby.repository.QnARepository;
import com.coobby.vo.BoardVO;
import com.coobby.vo.MemberVO;
import com.coobby.vo.QnAVO;

@Service
public class QnAServiceImpl implements QnAService{
	
	@Autowired
	private QnARepository qnaRepo;
	@Autowired
	private MemberRepository memRepo;
	
	@Override
	public List<QnAVO> getQnAList() {
		
		return (List<QnAVO>) qnaRepo.findAll();
	}
	
	@Override
	public void insertQnA(QnAVO vo) {
		QnAVO result = new QnAVO();
		result.setQtitle(vo.getQtitle());
		result.setQcontent(vo.getQcontent());
		result.setAcheck(0);
		qnaRepo.save(result);
	}
	
	public QnAVO updateQnA(QnAVO vo) {
		QnAVO vos = qnaRepo.findById(vo.getQnaNo()).get();
		vos.setMemberVO(vo.getMemberVO());
		qnaRepo.save(vos);
		return vos;
	}
	
	@Override
	public void deleteQnA(Integer qnaNo) {
		qnaRepo.deleteById(qnaNo);
	}
	
	@Override
	public QnAVO getQnA(QnAVO vo) {
		return qnaRepo.findById(vo.getQnaNo()).get();
	}

	@Override
	public MemberVO checkPass(MemberVO memVO, Integer qnaNo) {
		QnAVO qna = qnaRepo.findById(qnaNo).get();
		MemberVO member = qna.getMemberVO();
		return memRepo.checkPass(member.getMemId(), memVO.getMemPass());
	}
}
