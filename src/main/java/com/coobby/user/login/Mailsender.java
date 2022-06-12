package com.coobby.user.login;

import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;

public interface Mailsender {
	
	// 메일 전송을 위한 메소드
	void send(SimpleMailMessage simpleMessage) throws MailException;
	void send(SimpleMailMessage[] simpleMessages) throws MailException;

}
