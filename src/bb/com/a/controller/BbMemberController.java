package bb.com.a.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_YesMember;
import bb.com.a.service.BbMemberService;


@Controller
public class BbMemberController {
	private static final Logger logger = LoggerFactory.getLogger(BbMemberController.class);
	
	@Autowired
	BbMemberService bbMemberSerivce;
	
	
	/*--------------------------------------------------------------------------------------------
	 * 켰을때 메인으로 이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="home.do", method=RequestMethod.GET)
	public String home(Model model) {
		logger.info("BbMemberController home");
		return "home.tiles";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 로그인
	 *-------------------------------------------------------------------------------------------*/

	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String login(Model model, Bb_MemberDto bmdto, HttpServletRequest req) {
		logger.info("BbMemberController login");
		System.out.println(bmdto.toString());
		Bb_MemberDto login = bbMemberSerivce.login(bmdto);
		//회원정보가 일치했을 경우 (주소도 불러옴)
		if(login != null && !login.getId().equals("")) {
			Bb_AddrDto mostCurAdr = bbMemberSerivce.getMostCurrentAddress(bmdto);
			//세션에 아이디 주소 다 저장
			HttpSession session = req.getSession(true);
			session.setAttribute("login", login);
			session.setAttribute("loginAddr", mostCurAdr);
			//
		
		}else {
			System.out.println("로그인 실패");
		}
		//홈=메인화면으로 이동
		return "redirect:/home.do";
	}
	

	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String login(Model model) {
		logger.info("BbMemberController login");
		return "login.tiles";
	}
	
	@RequestMapping(value="regi.do", method=RequestMethod.GET)
	public String regi(Model model) {
		logger.info("BbMemberController regi");				
		return "regi.tiles";
	}
	
	@ResponseBody
	@RequestMapping(value="getID.do", method=RequestMethod.POST)
	public Bb_YesMember getID(Model model, Bb_MemberDto mem) {
		logger.info("BbMemberController getID");	
		
		int count = bbMemberSerivce.getID(mem);
		
		Bb_YesMember yes = new Bb_YesMember();
		if(count > 0) {
			yes.setMessage("SUCS");
		}else {
			yes.setMessage("FAIL");
		}
		return yes;		
	}
	
}
