package com.coobby.user.recipe;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.CateHowVO;
import com.coobby.vo.CateIngrVO;
import com.coobby.vo.CateKindVO;
import com.coobby.vo.CateSituVO;
import com.coobby.vo.CookVO;
import com.coobby.vo.IngrVO;
import com.coobby.vo.MemberVO;
import com.coobby.vo.RecipeVO;
import com.coobby.vo.Recipe_imageVO;
import com.coobby.vo.ScrapVO;


public interface RecipeService {
	
	// 레시피 상세보기
	RecipeVO getrecipe(int reNo);
	
	// 레시피 이미지 가져오기
	List<Recipe_imageVO> getImage(int reNo);
	
	// 재료 정보 가져오기
	List<Object[]> getIngr(int reNo);
	
	// 재료 상세보기
	IngrVO selectingr(String ingrName);
	
	// 즐겨찾기 추가
	void scrapSave(RecipeVO recipeVO, MemberVO memberVO);
	
	// 즐겨찾기 삭제
	void scrapDelete(ScrapVO scrapVO);
	
	// 레시피 등록
	void saverecipe(RecipeVO revo, MultipartFile[] file, String[] ingrCount, String[] ingrName);
	
	// 방법 카테고리
	List<CateHowVO> selectHow();
	// 종류 카테고리
	List<CateKindVO> selectKind();
	// 상황 카테고리
	List<CateSituVO> selectSitu();
	// 재료 카테고리
	List<CateIngrVO> selectIngr();

	List<Object[]> getSearchList(String searchKeyword);
	
	
}
