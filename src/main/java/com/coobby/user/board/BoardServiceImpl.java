package com.coobby.user.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.BoardRepository;
import com.coobby.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardRepository boardRepo;
	
	// 사용자 공지사항 전체목록 나오기
	@Override
	public List<BoardVO> getBoardList(){
		return (List<BoardVO>) boardRepo.findAll();
	}
	
	// 사용자 공지사항 등록페이지
	@Override
	public void insertBoard(BoardVO vo) {
		vo.setBoardViewcnt(0);
		boardRepo.save(vo);
	}
	
	// 사용자 공지사항 상세보기 조회수 1씩 증가
	@Override
	public BoardVO getBoard(BoardVO vo) {
		BoardVO result = boardRepo.findById(vo.getBoardNo()).get();
		if(result.getBoardViewcnt() != null)
			result.setBoardViewcnt(result.getBoardViewcnt()+1);
		boardRepo.save(result);
		return result;
	}
	
	// 사용자 공지사항 삭제하기
	@Override
	public void deleteBoard(BoardVO vo) {
		boardRepo.deleteById(vo.getBoardNo());
	}
	
	// 사용자 공지사항 제목하고 내용 수정하기 
	@Override
	public void updateBoard(BoardVO vo) {
		BoardVO result = boardRepo.findById(vo.getBoardNo()).get();
		result.setBoardTitle(vo.getBoardTitle());
		result.setBoardContent(vo.getBoardContent());
		boardRepo.save(result);
	}

}
