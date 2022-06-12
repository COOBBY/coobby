package com.coobby.admin.dashboard;

import java.util.List;

public interface DashBoardService {

	int todayRecipe();

	int todayUser();

	int todayFeed();

	List<Object[]> ageGroupSexRate();

	List<Object[]> recentFeedCnt();

	List<Object[]> recentRecipeCnt();

	List<Object[]> weekKktWebMemberCnt();

	List<Object[]> rangeFeedCnt(String startDate, String endDate);

	List<Object[]> rangeRecipeCnt(String startDate, String endDate);

}
