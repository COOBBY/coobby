package com.coobby.user.recipe;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.CateHowVO;
import com.coobby.vo.CateIngrVO;
import com.coobby.vo.CateKindVO;
import com.coobby.vo.CateSituVO;
import com.coobby.vo.CookVO;
import com.coobby.vo.IngrVO;
import com.coobby.vo.MemberVO;
import com.coobby.vo.ReLoveVO;
import com.coobby.vo.Re_commentVO;
import com.coobby.vo.RecipeVO;
import com.coobby.vo.Recipe_imageVO;
import com.coobby.vo.ScrapVO;


public interface RecipeService {
	
	// 레시피 전체 리스트 출력
	List<Object[]> getRecipeList(Pageable pageable, RecipeVO reVO);
	
	// 페이지 갯수 검색
	int getPageNum(RecipeVO reVO);
	
	// 레시피 상세보기
	RecipeVO getrecipe(int reNo);
	
	// 관련 레시피 조회
	List<Object[]> getRelatedRecipe(int reNo);
	
	// 레시피 이미지 가져오기
	List<Recipe_imageVO> getImage(int reNo);
	
	// 조리 완성 사진 가져오기
	List<Recipe_imageVO> getResultImage(int reNo);
	
	// 재료 정보 가져오기
	List<Object[]> getIngr(int reNo);
	
	// 재료 상세보기
	IngrVO selectingr(String ingrName);
	
	// 즐겨찾기 여부 확인
	ScrapVO getScrap(String memId, int reNo);
	
	// 좋아요 여부 확인
	ReLoveVO getLove(String memId, int reNo);
	
	// 즐겨찾기 추가
	void scrapSave(RecipeVO recipeVO, MemberVO memberVO);
	
	// 즐겨찾기 삭제
	void scrapDelete(Integer reNo, String memId);
	
	// 좋아요 추가
	void loveSave(RecipeVO recipVo, MemberVO memberVO);
	
	// 좋아요 삭제
	void loveDelete(Integer reNo, String memId);
	
	// 댓글 등록
	void saveComment(Re_commentVO reVO);
	
	// 대댓글 등록
	void saveChildComment(Re_commentVO reVO);
	
	// 댓글 조회
	List<Re_commentVO> getComment(int reNo);
	
	// 레시피 등록
	void saverecipe(RecipeVO revo, MultipartFile[] file, MultipartFile[] resultFile, String[] ingrCount, String[] ingrName);
	
	// 방법 카테고리
	List<CateHowVO> selectHow();
	// 종류 카테고리
	List<CateKindVO> selectKind();
	// 상황 카테고리
	List<CateSituVO> selectSitu();
	// 재료 카테고리
	List<CateIngrVO> selectIngr();
	
	
}
