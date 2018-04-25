package bb.com.a.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbAddrService;
import bb.com.a.service.BbMemberService;
/*import bb.com.a.service.MailService;*/
import bb.com.a.service.MailService;


@Controller
public class BbMemberController {
	private static final Logger logger = LoggerFactory.getLogger(BbMemberController.class);
	
	@Autowired
	BbMemberService bbMemberSerivce;
	@Autowired
	BbAddrService BbAddrService;
	@Autowired
	MailService mailService;
	
	public void setMailService(MailService mailService) {

        this.mailService = mailService;

    }
	
	
	/*--------------------------------------------------------------------------------------------
	 * 켰을때 메인으로 이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="home.do", method=RequestMethod.GET)
	public String home(Model model) {
		logger.info("BbMemberController home");
		return "home.tiles";
	}

	/*--------------------------------------------------------------------------------------------
	 * 로그아웃
	 *-------------------------------------------------------------------------------------------*/	
	@RequestMapping(value="logOut.do", method=RequestMethod.GET)
	public String logOut(HttpServletRequest req) {
		logger.info("BbMemberController home");
		HttpSession session = req.getSession(true);
		session.invalidate();
		return "redirect:/home.do";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 로그인
	 *-------------------------------------------------------------------------------------------*/

	@RequestMapping(value="login.do", method= {RequestMethod.POST, RequestMethod.GET})
	   public String login(Model model, Bb_MemberDto bmdto, HttpServletRequest req, HttpServletResponse resp) throws Exception {
	      logger.info("BbMemberController login");
	      System.out.println(bmdto.toString());
	      Bb_MemberDto login = bbMemberSerivce.login(bmdto);
	      //회원정보가 일치했을 경우 (주소도 불러옴)
	      if(login != null && !login.getId().equals("")) {
	         //세션에 아이디 주소 다 저장
	         HttpSession session = req.getSession(true);
	         session.setAttribute("login", login);
	         List<Bb_AddrDto> list = BbAddrService.allAddress(login);
	         session.setAttribute("list",list);
	         System.out.println("로그인 성공");
	      }else {
	         System.out.println("로그인 실패");
	      }
	      
	      return "redirect:/home.do";
	   }
	

	
	/*--------------------------------------------------------------------------------------------
	 * 회원가입
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="regi.do", method={RequestMethod.POST, RequestMethod.GET})
	public String regi(Model model) {
		logger.info("BbMemberController regi");				
		return "regi.tiles";
	}
	
	
	/*--------------------------------------------------------------------------------------------
	 * 회원가입
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="regiAf.do", method={RequestMethod.POST, RequestMethod.GET})
	public String regiAf(Model model,  Bb_MemberDto mem) {
		logger.info("BbMemberController regiAf");
		System.out.println(mem.toString());
		int seq;//member 등록하고 해당 seq바로 뽑아온거
		int order_seq; //장바구니 등록하고 해당 seq바로 뽑아온거
		try {
			seq = bbMemberSerivce.addmember(mem);
			Bb_MemberDto regimem = new Bb_MemberDto();
			regimem.setSeq(seq);
			order_seq = bbMemberSerivce.makeOrderBasket(regimem); //해당 memberSeq넣어서 장바구닝생성
			System.out.println("멤버컨트롤러_회원가입한후 seq:"+seq);
			System.out.println("멤버컨트롤러_회원가입한후장바구니 order_seq:"+order_seq);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/home.do";
		
	}
	
	
	/*--------------------------------------------------------------------------------------------
	 * 아이디 중복확인
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value="getID.do", method={RequestMethod.POST, RequestMethod.GET})
	public String getID(Model model, Bb_MemberDto mem) {
		logger.info("BbMemberController getID");	
		
		int count = bbMemberSerivce.getID(mem);
		
		//0일때는 존재하지 않음 1일때는 존재함
		if(count > 0) {
			return "FAIL";
		}else {
			return "SUCS";
		}
	
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 비밀번호 변경 전 비밀번호 일치하는 지 확인 
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value="checkPwd.do", method= {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> getID(@RequestBody Map<String, Object> map) {
		logger.info("BbaMemberController getID");	
		Bb_MemberDto bmdto = new Bb_MemberDto();
		bmdto.setSeq(Integer.parseInt((String)map.get("seq")));
		bmdto.setId((String)map.get("id"));
		bmdto.setPassword((String)map.get("password"));
		System.out.println(bmdto.toString());
		Bb_MemberDto checkPwd = bbMemberSerivce.login(bmdto);
		Map<String, Object> rmap = new HashMap<String, Object>();
		
		if(checkPwd != null) {
			rmap.put("msg","S");
		}else {
			rmap.put("msg","F");
		}
		return rmap;
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 비밀번호 변경
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value="updatePwd.do", method= {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> updatePwd(@RequestBody Map<String, Object> map, HttpServletRequest req) {
		logger.info("BbaMemberController updatePwd");	
		Bb_MemberDto bmdto = new Bb_MemberDto();
		bmdto.setSeq(Integer.parseInt((String)map.get("seq")));
		bmdto.setId((String)map.get("id"));
		bmdto.setPassword((String)map.get("password"));
		
		System.out.println(bmdto.toString());
		bbMemberSerivce.updatePwd(bmdto);
		//세션에도 다시저장
		HttpSession session = req.getSession(true);
		Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
		login.setPassword((String)map.get("password"));
		session.setAttribute("login", login);
		
		Map<String, Object> rmap = new HashMap<String, Object>();
		
		
		rmap.put("msg","비밀번호가 성공적으로 변경되었습니다.");
		return rmap;
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 회원정보 수정
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value="updateProfileAf.do", method= {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> updateProfileAf(@RequestBody Map<String, Object> map, HttpServletRequest req) {
		logger.info("BbaMemberController updateProfile");
		System.out.println("아이디: " + (String)map.get("id"));
		Bb_MemberDto bmdto = new Bb_MemberDto();
		bmdto.setSeq(Integer.parseInt((String)map.get("seq")));
		bmdto.setId((String)map.get("id"));
		bmdto.setBday((String)map.get("bday"));
		bmdto.setName((String)map.get("name"));
		bmdto.setPhone((String)map.get("phone"));
		bmdto.setSex(Integer.parseInt((String)map.get("sex")));
		
		//세션에도 다시저장
		HttpSession session = req.getSession(true);
		Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
		login.setBday((String)map.get("bday"));
		login.setName((String)map.get("name"));
		login.setPhone((String)map.get("phone"));
		login.setSex(Integer.parseInt((String)map.get("sex")));
		session.setAttribute("login", login);
		
		
		System.out.println(bmdto.toString());
		bbMemberSerivce.updateProfile(bmdto);
		Map<String, Object> rmap = new HashMap<String, Object>();
		
		
		rmap.put("msg","회원정보가 수정되었습니다.");
		return rmap;
	}
	

	/*--------------------------------------------------------------------------------------------
	 * 회원탈퇴
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="deleteMember.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String deleteMember(String seq, HttpServletRequest req) {
		logger.info("BbaMemberController deleteMember");
		System.out.println("seq: " + seq);
		int iseq = Integer.parseInt(seq);
		bbMemberSerivce.deleteMember(iseq);
		//세션삭제
		HttpSession session = req.getSession(true);
		session.invalidate();

		return "redirect:/home.do";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 비밀번호 찾기 폼으로이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value = "pwdPage.do", method ={RequestMethod.POST, RequestMethod.GET})
    public String pwdPage() {
		return "pwdPage.tiles";
    }
	
	/*--------------------------------------------------------------------------------------------
	 * 비밀번호 찾기
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value = "findPWD.do", method = {RequestMethod.POST, RequestMethod.GET})
    public Map<String, Object>  sendMailPassword(@RequestBody Map<String, Object> map) {
        Map<String, Object> rmap = new HashMap<>();
        System.out.println("비밀번호확인");
        
    	String id = ((String)map.get("id")).trim();
    	System.out.println("id: " + id);
    	Bb_MemberDto mem = new Bb_MemberDto();
    	mem.setId(id);
    	int count = bbMemberSerivce.getID(mem);
        	//0일때는 존재하지 않음 1일때는 존재함
        	
        	//존재하니까 임시비밀번호 생성 후, 해당 아이디 비밀번호 DB업데이트, 메일보내기 함수
        	if(count > 0) {
        		//
        		int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
                String password = String.valueOf(ran);
                mem.setPassword(password);
                System.out.println(mem.toString());
                
                bbMemberSerivce.changePwd(mem); //비밀번호 업데이트
                String title = "임시 비밀번호 발급 안내 입니다."; //메일제목
                StringBuilder sb = new StringBuilder();
                sb.append("귀하의 임시 비밀번호는 " + password + " 입니다."); //메일내용
                mailService.send(title, sb.toString(), "burger0bucks@gmail.com", id, null);
                rmap.put("msg", "해당 이메일로 임시비밀번호를 발급했습니다.");
                
        	}else {
        		rmap.put("msg", "해당 이메일(아이디) 주소가 존재 하지 않습니다.");
        	}

        return rmap;
    }
	

	
}
