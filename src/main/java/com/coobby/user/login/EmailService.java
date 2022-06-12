package com.coobby.user.login;

public interface EmailService {
	

	// 이메일 전송
	void sendSimpleMessage(String to) throws Exception;

}
