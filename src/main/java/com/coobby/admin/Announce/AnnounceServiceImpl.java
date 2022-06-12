package com.coobby.admin.Announce;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.repository.BoardImageRepository;
import com.coobby.repository.BoardRepository;
import com.coobby.vo.BoardImageVO;
import com.coobby.vo.BoardVO;

@Service("AnnounceService")
public class AnnounceServiceImpl implements AnnounceService{
	@Autowired
	private BoardRepository boardRepo;
	@Autowired
	private BoardImageRepository boardimageRepo;
	
	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);
	
	@Override
	public List<BoardVO> getBoardList(){
		return (List<BoardVO>) boardRepo.findAll();
	}
	
	// 공지사항 파일 넣을때와 안넣을 때 등록페이지
	@Override
	public void insertBoard(BoardVO vo, MultipartFile[] file) {
		vo.setBoardCreatetime(date.format(today));
		vo.setBoardViewcnt(0);
		BoardVO result = boardRepo.save(vo);
		
		if(file != null && file.length != 0) {
			for(int i = 0; i<file.length; i++) {
				if(file[0].getSize() == 0) continue;
				BoardImageVO imageVO = new BoardImageVO();
				imageVO.setFile(file[i]);
				imageVO.setBoardVO(result);
				imageVO.setBSeq(i+1);
				boardimageRepo.save(imageVO);
			}
		}
	}
	
	// 공지사항 목록페이지
	@Override
	public BoardVO getBoard(BoardVO vo) {
		BoardVO result = boardRepo.findById(vo.getBoardNo()).get();
		result.setBoardViewcnt(vo.getBoardViewcnt() + 1);
		boardRepo.save(result);
		return result;
	}
	
	// 공지사항 삭제페이지
	@Override
	public void deleteBoard(BoardVO vo) {
		boardRepo.deleteById(vo.getBoardNo());
	}
	
	// 공지사항 파일수정하기
	@Override
	public void updateBoard(BoardVO vo, MultipartFile[] file) {
		BoardVO result = boardRepo.findById(vo.getBoardNo()).get();
		result.setBoardTitle(vo.getBoardTitle());
		result.setBoardContent(vo.getBoardContent());
		boardRepo.save(result);
		
		if(file != null && file.length != 0) {
			for(int i = 0; i<file.length; i++) {
				if(file[0].getSize() == 0) continue;
				BoardImageVO imageVO = new BoardImageVO();
				imageVO.setFile(file[i]);
				imageVO.setBoardVO(result);
				imageVO.setBSeq(i+1);
				boardimageRepo.save(imageVO);
			}
		}
	}
	// 공지사항 글 수정 폼 
	@Override
	public BoardVO selectByPK(BoardVO vo) {
		return boardRepo.findById(vo.getBoardNo()).get();
	}
	
	// 공지사항 이미지 리스트 
	@Override
	public List<BoardImageVO> getBoardImages(BoardVO vo){
		BoardVO board = boardRepo.findById(vo.getBoardNo()).get();
		
		return boardimageRepo.findByBoardVO(board);
	}
}
