package com.coobby.user.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coobby.vo.MemberVO;

	 

@Controller
@RequestMapping("user/login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "/user/login/"+step;
	}
	
	
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
		return "redirect:/user/mainpage";
		}
//	
		
		
	}
	

	/*로그아웃 (메인페이지 이동)*/
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(MemberVO vo, HttpSession session) {
		
		session.invalidate();
		
		System.out.print("로그아웃성공");
		
		return "redirect:/user/mainpage";
					
	}
	

	
}
	
