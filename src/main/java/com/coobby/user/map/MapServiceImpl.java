package com.coobby.user.map;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
public List<MapVO> getStoreList(MapVO vo) {
	
	//return mapRepo.getStoreList(vo);
	return null;
}


}
