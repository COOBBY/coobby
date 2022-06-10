package com.coobby.user.recipe;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.file.FileSystemAlreadyExistsException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.coobby.repository.CookRepository;
import com.coobby.repository.RecipeRepository;
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

@Controller
@RequestMapping("user/recipe")
public class RecipeController {

	@Autowired
	private RecipeService recipeService;

	// 재료 상세 데이터 가져오기
	@RequestMapping("ingrModal")
	public void ingrModal(Model m, @RequestParam String ingrName) {
		IngrVO ingrResult = recipeService.selectingr(ingrName);
		m.addAttribute("ingr",ingrResult);
	}

	// 레시피 상세보기
	@RequestMapping("recipedetail")
	public void recipedetail(@RequestParam("reNo") int reNo,@RequestParam("memId") String memId, Model m) {
		// 레시피정보, 작성자정보 가져오기
		RecipeVO recipeResult = recipeService.getrecipe(reNo);
		String reCook = recipeResult.getReCook();
		String reCookArr[] = reCook.split(","); 

		List<HashMap> cookResult = new ArrayList<HashMap>();
		List<Object[]> getCook = recipeService.getIngr(reNo);
		for(Object[] result : getCook) {
			HashMap hm = new HashMap();
			hm.put("INGR_COUNT",result[0]);
			hm.put("INGR_NAME",result[1]);
			hm.put("INGR_STORED_IMAGE",result[2]);
			cookResult.add(hm);
		}
		
		// 조리 사진
		List<Recipe_imageVO> imageresult = recipeService.getImage(reNo);
		// 음식 완성 사진
		List<Recipe_imageVO> finalimage = recipeService.getResultImage(reNo);
		
		// 즐겨찾기 여부 확인
		ScrapVO scrap = recipeService.getScrap(memId, reNo);
		
		// 좋아요 여부 확인
		ReLoveVO love = recipeService.getLove(memId, reNo);
		
		// 댓글 조회
		List<Re_commentVO> commentParent = recipeService.getComment(reNo);
		
		// 관련 레시피 조회
		List<Object[]> relatedRecipe = recipeService.getRelatedRecipe(reNo);
		
		m.addAttribute("commentparent", commentParent);
		m.addAttribute("ingr", cookResult);
		m.addAttribute("recipe", recipeResult);
		m.addAttribute("cook", reCookArr);
		m.addAttribute("reimage", imageresult);
		m.addAttribute("finalimage", finalimage);
		m.addAttribute("checkLove", love);
		m.addAttribute("checkScrap", scrap);
		m.addAttribute("relatedRecipe",relatedRecipe);
	}
	// 즐겨찾기 추가
	@RequestMapping("scrapSave")
	@ResponseBody
	public void scrapSave(RecipeVO recipeVO, MemberVO memberVO) {
		recipeService.scrapSave(recipeVO, memberVO);
	}
	// 즐겨찾기 삭제
	@RequestMapping("scrapDelete")
	@ResponseBody
	public void scrapDelete(@RequestParam("reNo") Integer reNo, @RequestParam("memId") String memId) {
		recipeService.scrapDelete(reNo, memId);
	}
	
	//좋아요 추가
	@RequestMapping("loveSave")
	@ResponseBody
	public void loveSave(RecipeVO recipeVO, MemberVO memberVO) {
		recipeService.loveSave(recipeVO, memberVO);
	}
	
	@RequestMapping("loveDelete")
	@ResponseBody
	public void loveDelete(@RequestParam("reNo") Integer reNo, @RequestParam("memId") String memId) {
		recipeService.loveDelete(reNo, memId);
	}
	
	
	@RequestMapping("selectingr")
	@ResponseBody
	public IngrVO selectingr(@RequestParam String ingrName) {
		IngrVO result = recipeService.selectingr(ingrName);
		return result;
	}
	
	// 레시피 등록 페이지 이동
	@RequestMapping("recipeinsert")
	public void recipeinsert(Model m) {		
		List<CateHowVO> howresult = recipeService.selectHow();
		List<CateKindVO> kindresult = recipeService.selectKind();
		List<CateIngrVO> ingrresult = recipeService.selectIngr();
		List<CateSituVO> situresult = recipeService.selectSitu();

		m.addAttribute("kind", kindresult);
		m.addAttribute("how", howresult);
		m.addAttribute("ingr", ingrresult);
		m.addAttribute("situ", situresult);

	}

	// 레시피 등록
	@RequestMapping("recipesave")
	public String saverecipe(HttpServletRequest request, HttpServletResponse response, RecipeVO revo, MultipartFile[] file, MultipartFile[] resultFile, @RequestParam("ingrCount") String[] ingrCount, @RequestParam("ingrName") String[] ingrName) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		recipeService.saverecipe(revo, file, resultFile, ingrCount, ingrName);
		
		return "redirect:recipelist";
	}
	
	// 댓글 등록
	@RequestMapping("saveComment")
	public String saveComment(Re_commentVO reVO) {
		recipeService.saveComment(reVO);
//		List<Re_commentVO> list = recipeService.getComment(reVO.getRecipeVO().getReNo());
		return "redirect:recipedetail?reNo="+reVO.getRecipeVO().getReNo()+"&memId="+reVO.getMemberVO().getMemId();
	}
	
	// 대댓글 등록
	@RequestMapping("saveChildComment")
	public String saveChildComment(Re_commentVO reVO) {
		recipeService.saveChildComment(reVO);
		return "redirect:recipedetail?reNo="+reVO.getRecipeVO().getReNo()+"&memId="+reVO.getMemberVO().getMemId();
	}
	
	// 레시피 리스트 출력
	@RequestMapping("recipelist")
	public void recipelist(Model m, @PageableDefault(size = 4) Pageable pageable, RecipeVO reVO) {
		// 레시피 리스트 검색
		List<Object[]> allList = recipeService.getRecipeList(pageable, reVO);
		
		//페이지 갯수 검색
		int pageNum = recipeService.getPageNum(reVO);
		
		// 방법 카테고리 검색
		List<CateHowVO> howresult = recipeService.selectHow();
		// 종류 카테고리 검색
		List<CateKindVO> kindresult = recipeService.selectKind();
		// 재료 카테고리 검색
		List<CateIngrVO> ingrresult = recipeService.selectIngr();
		// 상황 카테고리 검색
		List<CateSituVO> situresult = recipeService.selectSitu();
		
		int nowPage = pageable.getPageNumber();
		
		m.addAttribute("nowPage", nowPage);
		m.addAttribute("pageNum", pageNum);
		m.addAttribute("kind", kindresult);
		m.addAttribute("how", howresult);
		m.addAttribute("ingr", ingrresult);
		m.addAttribute("situ", situresult);
		m.addAttribute("recipeList", allList);
	}

	@RequestMapping("recipeSearch")		//레시피 검색기능을 위해 만든 페이지로 이동
	public void recipeSearchForHyoung() {
		
	}
	//검색
	@RequestMapping(value="search")		//검색했을때 동작
	public String getList(@RequestParam("chooseFile") MultipartFile files, Model m, HttpServletRequest request, String searchKeyword) throws Exception{
		
		if(files.isEmpty()) {
			System.out.println(searchKeyword);
		}
		else {
			String pPath="";
			String imageName;
			File files1 = null;
			if(!files.isEmpty()) {
				imageName = files.getOriginalFilename();
				Path path = Paths.get(System.getProperty("user.dir"), "/src/main/resources/static");

				files1 = new File(path+"/"+imageName);
				pPath = path+"/"+imageName;
				pPath = pPath.replace("\\" , "/");
				System.out.println(pPath);
				try {
					files.transferTo(files1);
				}catch(Exception e) {
					e.printStackTrace();
				}
			}


			// 소켓을 선언
			try (Socket client = new Socket()) {

				// 소켓에 접속하기 위한 접속 정보를 선언한다.
				InetSocketAddress ipep = new InetSocketAddress("localhost", 9001);

				// 소켓 접속
				client.connect(ipep);

				// 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다.
				try (OutputStream sender = client.getOutputStream();) {

					// string -> byte 배열 형변환
					byte[] data = pPath.getBytes();

					// ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
					ByteBuffer b = ByteBuffer.allocate(4);

					// byte포멧은 little 엔디언이다.
					b.order(ByteOrder.LITTLE_ENDIAN);

					b.putInt(data.length);

					// 데이터 길이 전송
					sender.write(b.array(), 0, 4);

					// 데이터 전송
					sender.write(data);
					data = new byte[4];


					// 한글깨짐 방지
					InputStream receiver = client.getInputStream();

					BufferedReader reader = new BufferedReader(new InputStreamReader(receiver, "UTF-8"));

					// 공백제거를 안하면 이상한 값이 붙음
					searchKeyword = reader.readLine().trim();
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
			if( files1.exists() ){
				if(files1.delete()){
				}else{
				}
				
			}else{
				System.out.println("파일이 존재하지 않습니다.");
			}
		} 
		System.out.println(searchKeyword);
		m.addAttribute("searchList",recipeService.getSearchList(searchKeyword));
		return "/user/recipe/recipeSearch";
		
	}

}