package com.coobby.admin.dashboard;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.FeedRepository;
import com.coobby.repository.RecipeRepository;

@Service
public class DashBoardServiceImpl implements DashBoardService{

	@Autowired
	private RecipeRepository recipeRepoFordash;
	@Autowired
	private MemberRepository memRepo;
	@Autowired
	private FeedRepository feedRepoFordash;

	private static final String DATE_PATTERN = "yyyy-MM-dd";
	private static final Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);

	@Override
	public int todayRecipe() {

		return recipeRepoFordash.findByReCreatetime(date.format(today)).size();
	}

	@Override
	public int todayUser() {

		return memRepo.findBymemCreatetime(date.format(today)).size();
	}

	@Override
	public int todayFeed() {
		return feedRepoFordash.findByfeRegdate(date.format(today)).size();
	}

	@Override
	public List<Object[]> ageGroupSexRate() {
		return memRepo.ageGroupSexRate();
	}

}