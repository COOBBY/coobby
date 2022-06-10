package com.coobby.user.board;

import java.util.List;

import com.coobby.vo.BoardVO;

public interface BoardService {
	
	// 전체검색
	List<BoardVO> getBoardList();
	
	// 레코드 입력(추가)
	void insertBoard(BoardVO vo);
	
	// 상세보기
	public BoardVO getBoard(BoardVO vo);
	
	// 수정
	public void updateBoard(BoardVO vo);
	
	// 삭제
	public void deleteBoard(BoardVO vo);
	
}
