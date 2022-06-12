package com.coobby.admin.dashboard;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("admin")
public class DashBoardRestController {
	
	@Autowired
	private DashBoardService dashService;
	
	//달력으로 기간별 차트를 전송했을 때 ajaxchart 요청이 들어오면서 실행하는 메소드
	@GetMapping("ajaxChart")
	public @ResponseBody List<Object[]> ajaxChart(String startDate, String endDate, Model m) {	//startDate와 endDate를 매개변수로 받음
		System.out.println(startDate + "~" + endDate+"날짜범위");
		List<Object[]> list = dashService.rangeRecipeCnt(startDate, endDate);		//기간별 레시피 게시 수를 List<Object>형으로 받음
		List<Object[]> lists = dashService.rangeFeedCnt(startDate, endDate);		//기간별 피드 게시 수를 List<Object>형으로 받음
		List<Object[]> result = new ArrayList<Object[]>();							//새로운 결과값을 담기 위한 List<Object> result 선언
		
		int i =0;		//i는 list의 몇번째 arrayList인지 판단하기 위해 변수 선언
		for(Object[] obj : lists) {			//피드 게시 수를 Object[] obj로 반복문 실행
			Object[] objs = new Object[3];	//result에 담기 위한 Object배열 objs 선언
			objs[0] = obj[0];				//objs[0]번째에 obj[0] 즉 날짜 데이터를 기입
			objs[1] = obj[1];				//objs[1]번째에 obj[1] 즉, 그 날짜 등록 피드 수 기입
			objs[2] = list.get(i)[1];		//objs[2]번째에 recipe의 정보가 담긴 list의 i번째 배열 중 1번째 배열 값, 즉 레시피 게시 수 기입
			result.add(objs);				//result에 add함수를 사용해 Object배열 기입 
			i++;							//다음 날짜의 피드 수를 불러들임
		}
		return result;						//결과값 리턴
		
		
	} 
}
