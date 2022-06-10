package com.coobby.admin.Announce;

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
	
	@Override
	public List<BoardVO> getBoardList(){
		return (List<BoardVO>) boardRepo.findAll();
	}
	
	@Override
	public void insertBoard(BoardVO vo, MultipartFile[] file) {
		BoardVO result = boardRepo.save(vo);
		if(file != null) {
			for(int i = 0; i<file.length; i++) {
				BoardImageVO imageVO = new BoardImageVO();
				imageVO.setFile(file[i]);
				imageVO.setBoardVO(result);
				imageVO.setBSeq(i+1);
				boardimageRepo.save(imageVO);
			}
		}
	}
	
	@Override
	public BoardVO getBoard(BoardVO vo) {
		BoardVO result = boardRepo.findById(vo.getBoardNo()).get();
		result.setBoardViewcnt(vo.getBoardViewcnt());
		boardRepo.save(result);
		return result;
	}
	
	@Override
	public void deleteBoard(BoardVO vo) {
		boardRepo.deleteById(vo.getBoardNo());
	}
	
	@Override
	public void updateBoard(BoardVO vo) {
		BoardVO result = boardRepo.findById(vo.getBoardNo()).get();
		result.setBoardTitle(vo.getBoardTitle());
		result.setBoardContent(vo.getBoardContent());
		boardRepo.save(result);
	}
	
	public List<Object[]> selectByPK(BoardVO vo) {
		return boardRepo.getBoard(vo.getBoardNo());
	}
}
