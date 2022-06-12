package com.coobby.user.login;

import java.io.BufferedReader;
import java.io.Console;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ResponseBody;
import com.coobby.user.login.EmailServiceImpl;
import com.coobby.user.login.EmailService;

import com.coobby.vo.MemberVO;
import com.fasterxml.jackson.core.JsonParser;

	 

@Controller
@RequestMapping("user/login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	
	/* 로그인 페이지로 이동 */
	@RequestMapping("loginpage")
	public void loginpage() {	
	}
	
	/* 회원가입 페이지로 이동 */
	@RequestMapping("joinmember")
	public void joinmember(@RequestParam String userEmail, Model model ) {
		System.out.println(userEmail+" 인증된 이메일 주소");
		model.addAttribute("email", userEmail);
	}
	
	/* 닉네임 중복여부 확인 */
	@ResponseBody
	@RequestMapping("checkNickname")
	public String checkNickname(String nickname) {
		
		System.out.println(nickname);

		MemberVO member = loginService.findByMemNickname(nickname);
		String result;
		
		//변수 = 로그인서비스.로그인체크(닉네임);
		if (member != null ){
			result = "이미 사용중인 닉네임입니다. 다른 닉네임을 입력하여 주십시오.";
		} else {
			result = "사용 가능한 닉네임입니다.";
		}
		
		 return result; 
	}
	

	/* 로그인 성공여부에 따른 세션 저장 */
	@RequestMapping(value="checkLogin", produces="applicaton/text;charset=utf-8")
	public String checkLogin(MemberVO vo, HttpSession session, RedirectAttributes redirect) {
		
		MemberVO mem = loginService.loginCheck(vo.getMemId(), vo.getMemPass());
		
		if(mem == null) {    /* 로그인 실패 */
			redirect.addFlashAttribute("fail", 1 );
			System.out.println("로그인 실패");
			return "redirect:loginpage";
		}
		else {		/* 로그인 성공 */
		session.setAttribute("user", mem);
		System.out.println("로그인성공");
		return "/user/mainpage";
		}
	}
	

	/*로그아웃 (메인페이지 이동)*/
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(MemberVO vo, HttpSession session) {
		
		session.invalidate();
		
		System.out.print("로그아웃성공");
		
		return "redirect:/user/mainpage";
					
	}
	
	
	@RequestMapping("selectauthpage")
	public String selectauthpage() {
		return "/user/login/selectauthpage";
	}
	
	@RequestMapping("emailauthpage")
	public String emailtauthpage() {
		return "/user/login/emailauthpage";
	}
	
	@RequestMapping("mainpage")
	public String mainpage() {
		return "/user/mainpage";
	}
	
	@Autowired
    private JavaMailSender mailSender;
	
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody		
 public String mailCheckGET(String email) throws Exception{
        
        /* 뷰(View)로부터 넘어온 데이터 확인 */
        System.out.println("이메일 데이터 전송 확인");
        System.out.println("인증번호 : " + email);
        
        /* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        System.out.println(checkNum);
        
        /* 이메일 보내기 */
        String setFrom = "wisemin95@gmail.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "COOBBY홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
        /* 이메일 전송을 위한 코드 */
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
                      
        }catch(Exception e) {
            e.printStackTrace();
        }
        String num = Integer.toString(checkNum);
        System.out.println("num: "+ num);
        return num;                     
    }
	
	
	
 	
	
}
	
