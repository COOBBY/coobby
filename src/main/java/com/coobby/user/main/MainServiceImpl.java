package com.coobby.user.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.FeedRepository;
import com.coobby.repository.RecipeRepository;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	RecipeRepository recipeRepo;
	
	@Autowired
	FeedRepository feedRepo;
	
	@Override
	public List<Object[]> mainTopRecipeList(){
		return recipeRepo.mainTopRecipeList();		//메인페이지의 탑7 레시피 
	}

	@Override
	public List<Object[]> mainRecentRecipeList() {
		return recipeRepo.mainRecentRecipeList();	//메인페이지 최근 레시피 등록 리스트
	}

	@Override
	public List<Object[]> mainRandomFeed() {
		return feedRepo.mainRandomFeed();			//메인페이지 랜덤 피드 리스트
	}
}
