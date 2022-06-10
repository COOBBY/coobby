package com.coobby.user.recipe;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.repository.CateHowRepository;
import com.coobby.repository.CateIngrRepository;
import com.coobby.repository.CateKindRepository;
import com.coobby.repository.CateSituRepository;
import com.coobby.repository.CookRepository;
import com.coobby.repository.IngrRepository;
import com.coobby.repository.RecipeRepository;
import com.coobby.repository.Recipe_imageRepository;
import com.coobby.repository.ScrapRepository;
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

@Service
public class RecipeServiceImpl implements RecipeService{
	
	@Autowired 
	private RecipeRepository recipeRepo;
	@Autowired
	private Recipe_imageRepository imageRepo;
	@Autowired
	private CateHowRepository howRepo;
	@Autowired
	private CateKindRepository kindRepo;
	@Autowired
	private CateSituRepository situRepo;
	@Autowired
	private CateIngrRepository ingrRepo;
	@Autowired
	private IngrRepository ingrVORepo;
	@Autowired
	private CookRepository cookRepo;
	@Autowired
	private ScrapRepository scrapRepo;
	
	// 레시피 상세보기
	public RecipeVO getrecipe(int reNo) {
		RecipeVO result = recipeRepo.findById(reNo).get();
		result.setReViewcnt(result.getReViewcnt()+1);
		recipeRepo.save(result);
		return result;
	}
	
	//레시피 이미지 가져오기
	public List<Recipe_imageVO> getImage(int reNo){
		return imageRepo.getImage(reNo);
	}
	
	//재료 정보 가져오기
	public List<Object[]> getIngr(int reNo){
		return cookRepo.getingr(reNo);
	}
	
	// 즐겨찾기 추가
	public void scrapSave(RecipeVO recipeVO, MemberVO memberVO) {
		ScrapVO scrapVO = new ScrapVO();
		scrapVO.setRecipeVO(recipeVO);
		scrapVO.setMemberVO(memberVO);
		scrapRepo.save(scrapVO);
	}
	
	// 즐겨찾기 삭제
	public void scrapDelete(ScrapVO scrapVO) {
		scrapRepo.delete(scrapVO);
	}
	
	//레시피 입력
	public void saverecipe(RecipeVO revo, MultipartFile[] file, String[] ingrCount, String[] ingrName) {
		//기본 레시피 정보 저장
		RecipeVO result = recipeRepo.save(revo);
		
		//레시피 사진 저장
		if(file != null) {			
			for(int i = 0; i < file.length; i++) {
				Recipe_imageVO imageVO = new Recipe_imageVO();
				imageVO.setFile(file[i]);
				imageVO.setRecipeVO(result);
				imageVO.setReSeq(i+1);
				imageRepo.save(imageVO);
			}
		}
		//레시피 재료 저장
		for(int i = 0; i < ingrCount.length; i++) {
			CookVO cookVO = new CookVO();
			IngrVO ingrVO = new IngrVO();
			ingrVO.setIngrCode(ingrVORepo.getingr(ingrName[i]));
			cookVO.setIngrCount(ingrCount[i]);
			cookVO.setIngrVO(ingrVO);
			cookVO.setRecipeVO(result);
			cookRepo.save(cookVO);
		}
	}
	
	//재료 상세보기
	public IngrVO selectingr(String ingrName) {
		return ingrVORepo.selectingr(ingrName);
	}
	
	//방법카테고리 검색
	public List<CateHowVO> selectHow() {
		return (List<CateHowVO>)howRepo.findAll();
	}
	//종류카테고리 검색
	public List<CateKindVO> selectKind() {
		return (List<CateKindVO>)kindRepo.findAll();
	}
	//상황카테고리 검색
	public List<CateSituVO> selectSitu() {
		return (List<CateSituVO>)situRepo.findAll();
	}
	//재료카테고리 검색
	public List<CateIngrVO> selectIngr() {
		return (List<CateIngrVO>)ingrRepo.findAll();
	}

	@Override
	public List<Object[]> getSearchList(String searchKeyword) {
		
		return null;
	}
}
