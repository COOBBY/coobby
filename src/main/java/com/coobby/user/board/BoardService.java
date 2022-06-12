package com.coobby.user.board;

import java.util.List;

import com.coobby.vo.BoardVO;

public interface BoardService {
	
	// 사용자 공지사항 전체검색
	List<BoardVO> getBoardList();
	
	// 사용자 공지사항 레코드 입력(추가)
	void insertBoard(BoardVO vo);
	
	// 사용자 공지사항 상세보기
	public BoardVO getBoard(BoardVO vo);
	
	// 사용자 공지사항 수정
	public void updateBoard(BoardVO vo);
	
	// 사용자 공지사항 삭제
	public void deleteBoard(BoardVO vo);
	
}
