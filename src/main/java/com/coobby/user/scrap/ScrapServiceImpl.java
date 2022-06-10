package com.coobby.user.scrap;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.ScrapRepository;
import com.coobby.vo.MemberVO;

@Service
public class ScrapServiceImpl implements ScrapService {

	@Autowired
	private ScrapRepository scrapRepo;

	//즐겨찾기 목록 
	@Override
	public List<Object[]> scrapList(String memid) {

		return scrapRepo.scrapList(memid);
		
	}


	
}
