package com.coobby.user.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.coobby.vo.MemberVO;

import ch.qos.logback.classic.Logger;

@Controller
public class MemberController {

	
	@Autowired
	private MemberService memberService;
	
	
	//이메일 전송
	@Autowired
    private JavaMailSender mailSender;
	
	
	//회원 가입 시 사용자가 입력한 회원정보 삽입
	@RequestMapping("userinsert")
	public String userinsert(MemberVO vo, MultipartFile file)
	{
		/* System.out.println(vo.toString()+"***"); */
		memberService.userinsert(vo, file);
		return "redirect:/user/mainpage";
	}
	
	

}
