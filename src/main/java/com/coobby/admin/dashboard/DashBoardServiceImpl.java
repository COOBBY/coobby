package com.coobby.admin.dashboard;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coobby.repository.FeedRepository;
import com.coobby.repository.MemberRepository;
import com.coobby.repository.RecipeRepository;

@Service
public class DashBoardServiceImpl implements DashBoardService{

	@Autowired
	private RecipeRepository recipeRepo;
	@Autowired
	private MemberRepository memRepo;
	@Autowired
	private FeedRepository feedRepo;
	
	private static final String DATE_PATTERN = "yyyy-MM-dd";		//DB에 들어간 날짜 형식과 맞게 입력해주기 위해 DATE_PATTERN 선언
	private static final Date today = new Date();					//현재 날짜 today에 입력
	SimpleDateFormat date = new SimpleDateFormat(DATE_PATTERN);		//DATE_PATTERN을 이용한 SimpleDateFormat인 date 선언 
	private static final Calendar CAL = Calendar.getInstance();
	
	@Override
	public int todayRecipe() {			//당일 레시피 등록 개수
		return recipeRepo.findByReCreatetime(date.format(today)).size();	//date.format(today)를 사용해 현재 날짜를 기준으로 recipeRepo의
	}																		//findByReCreatetime를 사용해 얻은 List의 size리턴

	@Override
	public int todayUser() {			//당일 회원가입 유저 수
		return memRepo.findBymemCreatetime(date.format(today)).size();		//date.format(today)를 사용해 현재 날짜를 기준으로 memRepo의
	}																		//findBymemCreatetime를 사용해 얻은 List의 size리턴

	@Override
	public int todayFeed() {			//당일 피드 등록 수
		return feedRepo.findByfeRegdate(date.format(today)).size();			//date.format(today)를 사용해 현재 날짜를 기준으로 feedRepo의
	}																		//findByfeRegdate를 사용해 얻은 List의 size리턴

	@Override
	public List<Object[]> ageGroupSexRate() {	//연령대별 회원 성비
		return memRepo.ageGroupSexRate();		//memRepo에 있는 ageGroupSexRate메소드 호출
	}

	@Override
	public List<Object[]> recentFeedCnt() {			//최근한달 동안 일자별 피드 등록수
		CAL.setTime(today);							//java.util CAl을 사용한 현재날짜 적용
		CAL.add(Calendar.MONTH,-1);					//현재날짜에서 한달전으로 적용
		Date oneMonthAgo = new Date(CAL.getTimeInMillis());	//적용된 CAL변수를 Date형식으로 변환
		return feedRepo.rangeFeedCnt(date.format(oneMonthAgo),date.format(today));			//feedRepo에 있는 recentFeedCnt메소드 호출
	}

	@Override
	public List<Object[]> recentRecipeCnt() {		//최근 한달동안 레시피 등록 수
		CAL.setTime(today);							//java.util CAl을 사용한 현재날짜 적용
		CAL.add(Calendar.MONTH,-1);					//현재날짜에서 한달전으로 적용
		Date oneMonthAgo = new Date(CAL.getTimeInMillis());	//적용된 CAL변수를 Date형식으로 변환
		return recipeRepo.rangeRecipeCnt(date.format(oneMonthAgo),date.format(today));		//recipeRepo의 recentRecipeCnt메소드 호출
	}
	
	@Override
	public List<Object[]> weekKktWebMemberCnt(){	//최근 1주 카카오톡 회원가입, 웹 메일 인증 회원가입 수
		return memRepo.weekKktWebMemberCnt();		//memRepo의 weekKktWebMemberCnt메소드 호출
	}

	@Override
	public List<Object[]> rangeFeedCnt(String startDate, String endDate) {	//기간별 Feed 게시 수 
		List<Object[]> list =  feedRepo.rangeFeedCnt(startDate, endDate);	//매개변수로 받은 두 값을 feedRepo에 있는 rangeFeedCnt메소드의 인자로 넣어 호출
		return list;
	}

	@Override
	public List<Object[]> rangeRecipeCnt(String startDate, String endDate) {	//기간별 recipe 게시 수
		List<Object[]> list =  recipeRepo.rangeRecipeCnt(startDate, endDate);	//매개변수로 받은 두 기간을 recipeRepo에 있는 rangeRecipeCnt메소드의 인자로 넣어 호출
		return list;
	}

}