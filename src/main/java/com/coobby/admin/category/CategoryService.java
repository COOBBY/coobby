package com.coobby.admin.category;

import java.util.List;

import com.coobby.vo.CateHowVO;
import com.coobby.vo.CateIngrVO;
import com.coobby.vo.CateKindVO;
import com.coobby.vo.CateSituVO;

public interface CategoryService {

	int insertCate(String cateType, String cateName);

	void updateCate(String cateName, int cateCode, String cateType);

	void deleteCate(String cateType, int cateCode);

	List<CateKindVO> getKindList();

	List<CateHowVO> getHowList();

	List<CateIngrVO> getIngrList();

	List<CateSituVO> getSituList();

}
