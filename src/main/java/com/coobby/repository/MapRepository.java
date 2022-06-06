package com.coobby.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.coobby.vo.MapVO;

public interface MapRepository extends CrudRepository<MapVO, Integer> {
	
	//3km 이내 오프라인 매장 위치 검색
	@Query(value="SELECT store_name, latitude, longitude,  "
			+ "	(6371*acos(cos(radians(?1))*cos(radians(latitude))*cos(radians(longitude)  "
			+ "	-radians(?2))+sin(radians(?1))*sin(radians(latitude))))  "
			+ "	AS distance  "
			+ "FROM price  "
			+ "HAVING distance <= 3  "
			+ "ORDER BY distance",
			nativeQuery = true) 
	List<Object[]> getStoreLoc(Double lat, Double lon);
	
	//온라인 매장 재료 최저가 검색
	@Query(value="(select * from price where ingr_code=?1 and store_name = '이마트' order by price limit 3)   "
			+ "union all  "
			+ "(select * from price where ingr_code=?1 and store_name = '홈플러스' order by price limit 3)   "
			+ "union all  "
			+ "(select * from price where ingr_code=?1 and store_name = '롯데마트' order by price limit 3)   ",
			nativeQuery = true) 
	List<MapVO> getStoreList(MapVO vo);
	//List<MapVO> getStoreList(MapVO vo, Pageable pageable);

}
