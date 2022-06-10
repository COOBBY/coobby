package com.coobby.user.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	
	/* 로그인 페이지로 이동 */
	@RequestMapping("loginpage")
	public void loginpage() {
	}
	
	/* 회원가입 페이지로 이동 */
	@RequestMapping("joinmember")
	public void joinmember() {
	}
	
	@ResponseBody
	@RequestMapping("checkNickname")
	public String checkNickname(String nickname) {
		
		System.out.println(nickname);
		/* MemberVO mem = loginService.loginCheck(vo.getMemId(), vo.getMemPass()); */
		//result = loginservice.logincheck(nickname);
		
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
	
//  1. 중복확인 눌렀을때 ajax로 처리를 해야함   -- 출처 승환
		/*	2. ajax에서 url을 @requestMapping과 맞춰야함
		 * 	3. 그러면 연결됨	근데 404에러가 뜬다? 그러면  mapping문제
		 *  4. 연결되었으니 이제 처리를 해야함
		 *  5. 뷰단에서 nickname 가져왔어 (사용자가 입력한 값을 가져왔어) 그거를 서비스와 서비스 임플 에 인자값으로 넣어주면됨
		 *  6. 흐름이 컨트롤러에서 서비스 , 서비스impl , repo인데 repo는 형은 native query를 쓰는거 인지 
		 * 	7. 중복되면 리턴값 중복되었습니다. 확인해주세요. 중복이 아니면 사용가능한 아이디입니다. 라고 컨트롤러에서 리턴해주기 
		 * 	8. 그다음은 리턴값을 ajax에서 success : function(data) 로 받음 data가 컨트롤에서 리턴해주는 값이 옴
		 *  9. 그걸 이용해서 사용하기
		 * */
	
	
	/*
	 * @RequestMapping("userinsert") public void userinsert(String userinsert) { }
	 */
	
	/*
	 * @RequestMapping(value="checknickname", produces =
	 * "application/text;charset=utf-8" ) public String checknickname(MemberVO vo) {
	 * MemberVO result= loginService.checknickname(vo); if(result != null) { return
	 * "1"; } return "0"; }
	 */

	
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
		return "/user/main/mainpage";
		}
//		
//		MemberVO a = (MemberVO)session.getAttribute("user");
//		System.out.println(a);
		
		
	}
	

	/*로그아웃 (메인페이지 이동)*/
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(MemberVO vo, HttpSession session) {
		
		session.invalidate();
		
		System.out.print("로그아웃성공");
		
		return "redirect:/user/main/mainpage";
					
	}
	
//	@RequestMapping("selectauthpage")
//	public void selectauthpage(HttpServletRequest request, HttpSession session) {
////		String referer = request.getHeader("Referer");
////		System.out.println(referer.indexOf("loginpage"));
////		if(referer.indexOf("loginpage") < 0) {
////			session.setAttribute("prevPage", referer);
////		}
//		
//	}
	

	
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
		return "/user/login/mainpage";
	}
	
	/*
	 * @RequestMapping("/user/login") public class loginController {
	 */
	
	/*
	 * @RequestMapping("loginpage") public String loginpage() { return
	 * "/user/login/loginpage"; }
	 */
		
	
}
	
