package com.coobby.session;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@WebListener
public class SessionUserCounter implements HttpSessionListener{		//session이 생성되거나 해제되었을때 발생할 이벤트 관리 클래스
	
	private static Logger logger = LoggerFactory.getLogger(SessionUserCounter.class);
	
	public static int count = 0;
	
	public static int getCount() {
		if(count==0)		//count가 0이라면 바로 리턴해주고
			return count;
		return count-1;		//count가 0이 아니라면 관리자 한명을 제외한 나머지 회원들의 수를 얻기 위해 count-1 리턴
	}
	
	public void sessionCreated(HttpSessionEvent event) {	//session생성 이벤트가 발생했을 때
		HttpSession session = event.getSession();
		count++;	//접속 회원 수 +1
		logger.error("\n\tSESSION CREATED : {}, TOTAL ACCESSER : {}", session.getId(), count);
	}
	
	public void sessionDestroyed(HttpSessionEvent event) {	//session 제거 이벤트가 발생했을 떄
		count--;	//접속 회원수 -1
		if(count<0) count=0;	//count가 0보다 작다면 count에 0을 입력
		HttpSession session = event.getSession();
		logger.error("\n\tSESSION CREATED : {}, TOTAL ACCESSER : {}", session.getId(), count);
	}
}
