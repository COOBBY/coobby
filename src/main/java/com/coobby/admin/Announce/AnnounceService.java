package com.coobby.admin.Announce;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.BoardImageVO;
import com.coobby.vo.BoardVO;

public interface AnnounceService {
	// 공지사항 전체검색
	List<BoardVO> getBoardList();
	
	// 공지사항 레코드 입력(추가)
	void insertBoard(BoardVO vo, MultipartFile[] file);
	
	// 공지사항 상세보기
	public BoardVO getBoard(BoardVO vo);
	
	// 공지사항 수정
	public void updateBoard(BoardVO vo, MultipartFile[] file);
	
	// 공지사항 삭제
	public void deleteBoard(BoardVO vo);
	
	// 공지사항 글 수정 폼
	public BoardVO selectByPK(BoardVO vo);
	
	// 공지사항 수정페이지 이미지 가져오기
	public List<BoardImageVO> getBoardImages(BoardVO vo);

}
