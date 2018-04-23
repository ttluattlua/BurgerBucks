package bb.com.a.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbMemberService;


@Controller
public class BbMyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbMyPageController.class);
	

	@Autowired
	BbMemberService bbMemberSerivce;
	
		
	/*--------------------------------------------------------------------------------------------
	 * 비밀번호 변경 페이지로 이동 
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="changePwd.do", method=RequestMethod.GET)
	public String changePwd() {
		logger.info("BbMyPageController changePwd");
		return "changePwd.tiles";
	}
	
	
	/*--------------------------------------------------------------------------------------------
	 * 회원정보 수정 페이지로 이동 
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="updateProfile.do", method=RequestMethod.GET)
	public String updateProfile(Model model) {
		logger.info("BbMyPageController updateProfile");
		String exp = "*경험치\r\n-0~10 1단계\r\n-11~20 2단계";
		model.addAttribute("exp", exp);
		return "updateProfile.tiles";
	}
	


	
	
		
}
