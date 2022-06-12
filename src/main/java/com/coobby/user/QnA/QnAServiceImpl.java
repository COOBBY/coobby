package com.coobby.user.QnA;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	
	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);
	
	// 사용자 QnA 리스트 목록 띄우기
	@Override
	public List<QnAVO> getQnAList() {
		
		return (List<QnAVO>) qnaRepo.findAll();
	}
	
	// 사용자 QnA 등록하는 페이지
	@Override
	public void insertQnA(QnAVO vo) {
		QnAVO result = new QnAVO();
		result.setQtitle(vo.getQtitle());
		result.setQcontent(vo.getQcontent());
		result.setAcheck(0);
		result.setQdate(date.format(today));
		System.out.println(result);
		System.out.println(result.getQtitle());
		qnaRepo.save(result);
	}
	
	// 사용자 QnA 수정하는 페이지
	public QnAVO updateQnA(QnAVO vo) {
		QnAVO vos = qnaRepo.findById(vo.getQnaNo()).get();
		vos.setMemberVO(vo.getMemberVO());
		qnaRepo.save(vos);
		return vos;
	}
	
	// 사용자 QnA 삭제하는 페이지
	@Override
	public void deleteQnA(Integer qnaNo) {
		qnaRepo.deleteById(qnaNo);
	}
	
	// 사용자 아이디를 찾아 QnA 상세보기
	@Override
	public QnAVO getQnA(QnAVO vo) {
		return qnaRepo.findById(vo.getQnaNo()).get();
	}

	// 사용자 QnA 비공개글일때 비밀번호 입력하고 들어가게 하기
	@Override
	public MemberVO checkPass(MemberVO memVO, Integer qnaNo) {
		QnAVO qna = qnaRepo.findById(qnaNo).get();
		MemberVO member = qna.getMemberVO();
		return memRepo.checkPass(member.getMemId(), memVO.getMemPass());
	}
}
