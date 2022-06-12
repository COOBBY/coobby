package com.coobby.user.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coobby.user.QnA.QnAService;
import com.coobby.user.login.MemberService;
import com.coobby.vo.MemberVO;
import com.coobby.vo.QnAVO;


@Controller
@RequestMapping("/user")
public class MypageController {
	
	@Autowired
	QnAService qnaService;
	@Autowired
	MypageService mypageService;
	
	// 회원정보 탈퇴페이지
	@RequestMapping("mypage/Membersignout")
	public String Membersignout(HttpSession session, Model m) {
		MemberVO memVO = (MemberVO)session.getAttribute("user");
		if(memVO == null) {
			m.addAttribute("alert","문자");
		}
		else {
			m.addAttribute("memOut",mypageService.getMember(memVO.getMemId()));
		}
//		MemberVO result = mypageService.getMemPass(memVO.getMemPass());
		return "/user/mypage/Membersignout";
	}
	
	// 회원탈퇴 할때 아이디 세션 받아서 비밀번호 비교
	@RequestMapping("mypage/DeleteMember")
	public String DeleteMember(String password, HttpSession session, RedirectAttributes redirectAttr, Model model ) {
		// 아이디 세션에서 구하기
		MemberVO vo = (MemberVO) session.getAttribute("user");
		// 입력받은 비밀번호와 세션에 있는 MemberVO의 비밀번호 비교
		if(password.equals(vo.getMemPass())) {
			mypageService.delete(vo);
			session.invalidate();
			redirectAttr.addAttribute("delete", "삭제성공");
			// 성공시 페이지 이동
			return "redirect:/user/mainpage";
		}
		redirectAttr.addFlashAttribute("delete", "삭제실패");
		// 비밀번호 불일치시 이전페이지로 이동
		return "redirect:/user/mypage/Membersignout";
	}
	
	// 회원정보 수정할때 세션값 받아서 수정하기
	@RequestMapping("mypage/Memberupdate")
	public String Memberupdate(HttpSession session, Model m) {
		MemberVO vo = (MemberVO)session.getAttribute("user");
		if(vo == null) {
			m.addAttribute("alert","문자");
		}
		else {
			m.addAttribute("memInfo", mypageService.getMember(vo.getMemId()));
		}
		return "/user/mypage/Memberupdate";
	}
	
	// 회원정보 수정
	@RequestMapping("mypage/ModifyMember")
	public String ModifyMember(MemberVO vo) {
		mypageService.update(vo);
		return "/user/mypage/Memberupdate";
	}
	
//	@GetMapping("mypage/Memberupdate")
//	public String updateInfo(Model model, HttpSession session) {
//		String sessionId = (String)session.getAttribute("sessionId");
//		Member member = memberService.selectMember(sessionId);
//		model.addAttribute("member", member);
//		return "/user/mypage/Memberupdate";
//	}

	// 비밀번호 확인시 일치 불일치 알림창 띄우기
	@RequestMapping("mypage/Memberpasswordcheck")
	public String Memberpasswordcheck(Model m, HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("user");
		if(vo == null) {
			m.addAttribute("alert","문자");
		}
		else {
			m.addAttribute("memInfo", mypageService.getMember(vo.getMemId()));
		}
		return "/user/mypage/Memberpasswordcheck";
	}
	
	// 사용자 즐겨찾기 페이지
	@RequestMapping("mypage/MemberFavorites")
	public String MemberFavorites() {
		return "/user/mypage/MemberFavorites";
	}
	
	// 1대1 문의글 목록 리스트 페이지
	@RequestMapping("mypage/inquery")
	public String inquery(Model m) {
		List<QnAVO> result = qnaService.getQnAList();
		m.addAttribute("qnaList",result);
		System.out.println(result);
		return "/user/mypage/inquery";
	}
	
	// 1대1 문의글 등록하는 페이지
	@RequestMapping("mypage/inqueryinsert")
	public String inqueryinsert() {
		return "/user/mypage/inqueryinsert";
	}
	
	// 공지사항 네비바에 클릭했을 때 공지사항 페이지로 가기
	@RequestMapping("/mypage/nav-announce")
	public String BoardList_2() {
		return "/user/Announce/Boardlist";
	}	
	
	// 1대1 문의글 저장하는 페이지
	@RequestMapping("/mypage/save")
	public String inquery(QnAVO vo) {
		if(vo.getQcheck()==null) {
			vo.setQcheck(0);
		}
		qnaService.insertQnA(vo);
		return "redirect:/user/mypage/inquery";
	}
	
	// 비밀번호 체크 일치 불일치 시 돌아가는 페이지
	@RequestMapping("/mypage/passcheck")
	public String passcheck(HttpSession session, MemberVO vo, RedirectAttributes redirectAttr) {
		String id = (String)session.getAttribute("memId");
		// 아이디가 없는 경우 메인폐이지로 이동
		if(id == null) {
			return "redirect:/user/mainpage";
		}
		
		vo.setMemId(id);
		// 체크 여부 성공 true/실패 false
		boolean result = mypageService.checkPass(vo);
		
		if(result) {
			return "redirect:/user/mypage/Memberupdate";
		}
		// 체크 실패시 실패여부 임시 모델에 담아서 전달
		redirectAttr.addFlashAttribute("isChecked",  result); 
		/*
		 * View에서 다음과 같이 사용
		 *  ${isChecked} == false
		 */
		return "redirect:/user/mypage/Memberpasswordcheck";
	
	}
	
	// 닉네임 중복확인 사용가능한지 아닌지 확인하는 코드
	@ResponseBody
	@RequestMapping("mypage/checkNickname")
	public String checkNickname(String nickname) {
	      
	      System.out.println(nickname);
	      /* MemberVO mem = loginService.loginCheck(vo.getMemId(), vo.getMemPass()); */
	      //result = loginservice.logincheck(nickname);   
	      MemberVO member = mypageService.findByMemNickname(nickname);
	      String result;
	      
	      //변수 = 로그인서비스.로그인체크(닉네임);
	      if (member != null ){
	         result = "이미 사용중인 닉네임입니다. 다른 닉네임을 입력하여 주십시오.";
	      } else {
	         result = "사용 가능한 닉네임입니다.";
	      }
	      
	       return result; 
	   }
	
}
