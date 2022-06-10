package com.coobby.user.recipe;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.repository.CateHowRepository;
import com.coobby.repository.CateIngrRepository;
import com.coobby.repository.CateKindRepository;
import com.coobby.repository.CateSituRepository;
import com.coobby.repository.CommentRepository;
import com.coobby.repository.CookRepository;
import com.coobby.repository.IngrRepository;
import com.coobby.repository.ReLoveRepository;
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
import com.coobby.vo.ReLoveVO;
import com.coobby.vo.Re_commentVO;
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
	@Autowired
	private ReLoveRepository loveRepo;
	@Autowired
	private CommentRepository commentRepo;
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 4;	// 한페이지당 레코드 수
	
	// 레시피 리스트 검색
	public List<Object[]> getRecipeList(Pageable pageable, RecipeVO reVO){
		if(reVO.getCateHow() != null) {
			return recipeRepo.getRecipeHowList(pageable, reVO.getCateHow().getHowCode());
		} else if(reVO.getCateIngr() != null) {
			return recipeRepo.getRecipeIngrList(pageable, reVO.getCateIngr().getIngrCode());
		} else if(reVO.getCateKind() != null) {
			return recipeRepo.getRecipeKindList(pageable, reVO.getCateKind().getKindCode());
		} else if(reVO.getCateSitu() != null) {
			return recipeRepo.getRecipeSituList(pageable, reVO.getCateSitu().getSituCode());
		} else {
			return recipeRepo.getRecipeList(pageable);
		}
	}
	// 페이지 번호 검색
	public int getPageNum(RecipeVO reVO) {
		int totalRecCount;
		if(reVO.getCateHow() != null) {
			totalRecCount = recipeRepo.getHowPageNum(reVO.getCateHow().getHowCode());
		} else if(reVO.getCateIngr() != null) {
			totalRecCount = recipeRepo.getIngrPageNum(reVO.getCateIngr().getIngrCode());
		} else if(reVO.getCateKind() != null) {
			totalRecCount = recipeRepo.getKindPageNum(reVO.getCateKind().getKindCode());
		} else if(reVO.getCateSitu() != null) {
			totalRecCount = recipeRepo.getSituPageNum(reVO.getCateSitu().getSituCode());
		} else {
			totalRecCount = recipeRepo.getPageNum();
		}

		if(totalRecCount%countPerPage>0) {
			pageTotalCount = (totalRecCount/countPerPage) + 1;
		}
		else {
			pageTotalCount = (totalRecCount/countPerPage);
		}
		
		return pageTotalCount;
	}
	
	// 레시피 상세보기
	public RecipeVO getrecipe(int reNo) {
		RecipeVO result = recipeRepo.findById(reNo).get();
		result.setReViewcnt(result.getReViewcnt()+1);
		recipeRepo.save(result);
		return result;
	}
	
	//관련 레시피 검색
	@Override
	public List<Object[]> getRelatedRecipe(int reNo) {
		RecipeVO result = recipeRepo.findById(reNo).get();
		return recipeRepo.getRelatedRecipe(result.getReTitle());
	}
	
	//레시피 이미지 가져오기
	public List<Recipe_imageVO> getImage(int reNo){
		return imageRepo.getImage(reNo);
	}
	
	//조리 완성 사진 가져오기
	public List<Recipe_imageVO> getResultImage(int reNo){
		return imageRepo.getResultImage(reNo);
	}
	
	//재료 정보 가져오기
	public List<Object[]> getIngr(int reNo){
		return cookRepo.getingr(reNo);
	}
	
	// 즐겨찾기 여부 확인
	public ScrapVO getScrap(String memId, int reNo) {
		return scrapRepo.getScrap(reNo, memId);
	}
	
	// 좋아요 여부 확인
	public ReLoveVO getLove(String memId, int reNo) {
		return loveRepo.getLove(reNo, memId);
	}
	
	// 즐겨찾기 추가
	public void scrapSave(RecipeVO recipeVO, MemberVO memberVO) {
		ScrapVO scrapVO = new ScrapVO();
		scrapVO.setRecipeVO(recipeVO);
		scrapVO.setMemberVO(memberVO);
		scrapRepo.save(scrapVO);
	}
	
	// 즐겨찾기 삭제
	public void scrapDelete(Integer reNo, String memId) {
		scrapRepo.deleteScrap(reNo, memId);
	}
	
	// 좋아요 추가
	public void loveSave(RecipeVO recipeVo, MemberVO memberVO) {
		ReLoveVO reLoveVO = new ReLoveVO();
		reLoveVO.setRecipeVO(recipeVo);
		reLoveVO.setMemberVO(memberVO);
		loveRepo.save(reLoveVO);
	}
	
	// 좋아요 삭제
	public void loveDelete(Integer reNo, String memId) {
		loveRepo.deleteLove(reNo, memId);
	}
	
	// 댓글 등록
	public void saveComment(Re_commentVO reVO) {
		Re_commentVO commentVO = new Re_commentVO();
		commentVO.setReContent(reVO.getReContent());
		commentVO.setMemberVO(reVO.getMemberVO());
		commentVO.setRecipeVO(reVO.getRecipeVO());
		commentVO.setReParent(0);
		commentRepo.save(commentVO);
	}
	
	// 대댓글 등록
	public void saveChildComment(Re_commentVO reVO) {
		Re_commentVO commentVO = new Re_commentVO();
		commentVO.setReContent(reVO.getReContent());
		commentVO.setMemberVO(reVO.getMemberVO());
		commentVO.setRecipeVO(reVO.getRecipeVO());
		commentVO.setReParent(reVO.getReParent());
		commentRepo.save(commentVO);
	}
	
	// 댓글 조회
	public List<Re_commentVO> getComment(int reNo){
		return commentRepo.getComment(reNo);
	}
	
//	// 대댓글 조회
//	public List<List<Re_commentVO>> getChildComment(int reNo){
//		List<Re_commentVO> result = commentRepo.getComment(reNo);
//		List<List<Re_commentVO>> childResult = new ArrayList<List<Re_commentVO>>();
//		for(Re_commentVO re : result) {
//			System.out.println(re.getReCommNo());
//			childResult.add(commentRepo.getChildComment(reNo, re.getReCommNo()));
//		}
//		System.out.println(childResult);
//		return childResult;
//	}
	
	//레시피 입력
	public void saverecipe(RecipeVO revo, MultipartFile[] file, MultipartFile[] resultFile, String[] ingrCount, String[] ingrName) {
		//기본 레시피 정보 저장
		RecipeVO result = recipeRepo.save(revo);
		
		//레시피 사진 저장
		if(file != null) {			
			for(int i = 0; i < file.length; i++) {
				Recipe_imageVO imageVO = new Recipe_imageVO();
				imageVO.setFile(file[i]);
				imageVO.setRecipeVO(result);
				imageVO.setReSeq(i+1);
				imageVO.setReSplit(1);
				imageRepo.save(imageVO);
			}
		}
		
		if(resultFile != null) {
			for(int i = 0; i < resultFile.length; i++) {
				Recipe_imageVO imageVO = new Recipe_imageVO();
				imageVO.setResultFile(resultFile[i]);
				imageVO.setRecipeVO(result);
				imageVO.setReSeq(i+1);
				imageVO.setReSplit(0);
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
}
