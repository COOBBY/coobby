package com.coobby.user.map;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coobby.vo.IngrVO;
import com.coobby.vo.MapVO;

@Controller
@RequestMapping("/user/map")
public class MapController {
	
	@Autowired
	private MapService mapService;

	@RequestMapping("map")
	public String map(Model m, IngrVO vo) {
		
		//온라인 매장 상품 및 가격 출력
		 List<MapVO> result = mapService.getStoreList(vo);
		 m.addAttribute("storeList",result);

		return "/user/map/map";
	}


}

