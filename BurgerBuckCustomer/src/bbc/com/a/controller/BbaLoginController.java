package bbc.com.a.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bbc.com.a.model.Bb_AdminDto;
import bbc.com.a.service.BbaMemberSerivce;
import bbc.com.a.service.BbaStatisticService;
import bbc.com.a.service.BbaStoreSerivce;

@Controller
public class BbaLoginController {
	private static final Logger logger = LoggerFactory.getLogger(BbaLoginController.class);
	
	@Autowired
	BbaMemberSerivce bbMemberService;

	@Autowired
	BbaStatisticService bbaStatisticService;
	
	/*--------------------------------------------------------------------------------------------
   * 로그인 화면 (첫화면)
   *-------------------------------------------------------------------------------------------*/
  @RequestMapping(value="BbcMain.do", method= {RequestMethod.GET, RequestMethod.POST})
  public String main(HttpServletRequest request, Model model) {
    logger.info("BbaMemberController login");
    
    //세션 초기화
    HttpSession session = request.getSession();
    session.removeAttribute("loginedId");
    
    return "login.tiles";
  }
	
	/*--------------------------------------------------------------------------------------------
	 * 로그인 화면 (첫화면)
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="BbcLogin.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String login(HttpServletRequest request, Model model) {
		logger.info("BbaMemberController login");
		
		//세션 초기화
		HttpSession session = request.getSession();
		session.removeAttribute("loginedId");
		
		return "login.tiles";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 로그인후 메인
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="BbcLoginAf.do", method=RequestMethod.POST)
	public String loginAf(HttpServletRequest request, HttpServletResponse response,  Model model, Bb_AdminDto adminDto) {
		logger.info("BbaMemberController login");
		
		
		
		int StoreCount = bbaStatisticService.getStoreCounts();
		int memCount = bbaStatisticService.getMemberCounts();
		int preProfit = bbaStatisticService.getPreviousMonthProfit();
		int preOrderCount = bbaStatisticService.getPreviousMonthOrderCounts();
		
		System.out.println("로그인 시 id : " + adminDto.getId());
		System.out.println("로그인 시 password : " + adminDto.getPassword());
		
		HttpSession session = request.getSession(true);

		session.setAttribute("imagePath", "http://192.168.50.79:8090/upload/");

		
		//언니 여기다가 이미지 경로 좀 session에다 저장해 놓을게요 지우지말아주세용 ㅋㅋ
		//여기다 저장한 후에 컴퓨터 서버 바뀌면 여기만 수정해줄 수 있게 바꿔놓으려구용

	    /*// 요청 URI로 1depth path를 구한다.
		String reqUri = request.getRequestURI();
		String[] reqUris = reqUri.split("/");
		String firstPath = "";
		firstPath = reqUris[1];*/
		
		Bb_AdminDto admin = bbMemberService.loginAdminIdPw(adminDto);
		if(admin==null) {
			

            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out;
			try {
				
				//실패시 창 띄우기
				out = response.getWriter();
				out.println("<script>alert('아이디/ 비밀번호를 확인하세요.'); history.go(-1);</script>");
	            out.flush(); 
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return "redirect:/login.do";
		}else {
			
			session.setAttribute("loginedId", admin.getId()) ;
			session.setMaxInactiveInterval(60*60);
			model.addAttribute("StoreCount", StoreCount);
			model.addAttribute("memCount", memCount);
			model.addAttribute("preProfit", preProfit);
			model.addAttribute("preOrderCount", preOrderCount);
			model.addAttribute("msg", admin.getId()+" login 완료"); 
		    
			return "home.tiles";
		}
	}	

}













