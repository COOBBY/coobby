package com.coobby.user.map;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.MapRepository;
import com.coobby.vo.IngrVO;
import com.coobby.vo.MapVO;

@Service
public class MapServiceImpl implements MapService{
@Autowired
private MapRepository mapRepo;

//오프라인 매장 위치
	@Override
	public List<Object[]> getStoreLoc(Double lat, Double lon) {
	return (List<Object[]>)mapRepo.getStoreLoc(lat, lon);
	}

//온라인 매장 및 가격
@Override
public List<MapVO> getStoreList(IngrVO vo) {
	
	return mapRepo.getStoreList(vo);

}


}
