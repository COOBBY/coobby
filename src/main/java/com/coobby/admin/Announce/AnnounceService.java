package com.coobby.admin.Announce;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.BoardImageVO;
import com.coobby.vo.BoardVO;

public interface AnnounceService {
	// 전체검색
	List<BoardVO> getBoardList();
	
	// 레코드 입력(추가)
	void insertBoard(BoardVO vo, MultipartFile[] file);
	
	// 상세보기
	public BoardVO getBoard(BoardVO vo);
	
	// 수정
	public void updateBoard(BoardVO vo);
	
	// 삭제
	public void deleteBoard(BoardVO vo);
	
	// 글 수정 폼
	List<Object[]> selectByPK(BoardVO vo);

}
