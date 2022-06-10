package com.coobby.user.scrap;

import java.util.HashMap;
import java.util.List;

import com.coobby.vo.MemberVO;
import com.coobby.vo.ScrapVO;



public interface ScrapService {

	//즐겨찾기 목록
	public List<Object[]> scrapList(String memid);
	
}
