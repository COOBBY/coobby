package com.coobby.user.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coobby.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping("userinsert")
	public String userinsert(MemberVO vo)
	{
		System.out.println(vo.toString()+"***");
		
		memberService.userinsert(vo);
		return "redirect:/user/main/mainpage";
	}
	
	
	
	/*
	 * 닉네임 중복 check
	 * */
	/*
	 * @RequestMapping("/api/checkNickname") public String checkNickname(MemberVO
	 * vo) { System.out.println("dd"); String boo = "no";
	 * 
	 * if(ser.checkNickname(vo.getMemNickname()) != null) { boo = "yes"; }
	 * 
	 * 
	 * return boo;
	 * 
	 * }
	 */
	
	
	
	
	/* 회원가입 화면에서 입력한 정보를 DB에 삽입 */

}
