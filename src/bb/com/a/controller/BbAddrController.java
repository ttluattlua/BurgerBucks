package bb.com.a.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import bb.com.a.service.BbAddrService;
import bb.com.a.service.BbMemberService;
import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbAddrService;


@Controller
public class BbAddrController {
private static final Logger logger = LoggerFactory.getLogger(BbAddrController.class);
	
	@Autowired
	BbAddrService BbAddrService;
	@Autowired
	BbMemberService BbMemberService;
	
	
	/*-------------------------------------------------------------------------------
	 * 주소 추가 폼으로 이동
	 * --------------------------------------------------------------------------------*/	
	
	@RequestMapping(value="goAddr.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String goAddr(Model model, HttpServletRequest req) throws Exception {
		logger.info("KhAddressController goAddr");
		
		List<Bb_AddrDto> addrList = BbAddrService.allAddress();
		model.addAttribute("list", addrList);
		return "goAddr.tiles";	
	}
	
	/*-------------------------------------------------------------------------------
	 * 주소 추가
	 * --------------------------------------------------------------------------------*/
	@RequestMapping(value="addAddr.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String googlemap(Model model) throws Exception {
		logger.info("KhAddressController googlemap");
		return "addAddr.tiles";	
	}

	@RequestMapping(value="addAddrAf.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addrAddAf(Model model, Bb_AddrDto addr) throws Exception {
		logger.info("KhAddressController addrAdd");
		System.out.println("bfService: " + addr);
		BbAddrService.addrAdd(model, addr);
		model.addAttribute("addr",addr);
		return "addAddrAf.tiles";	
	}
	/*@RequestMapping(value="test.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String test(Model model) throws Exception {
		logger.info("KhAddressController test");
		
		System.out.println("bfService: " + addr);
		
		return "addAddrAf.tiles";	
	}
	*/

//	@RequestMapping(value="address.do", method= {RequestMethod.GET, RequestMethod.POST})
//	public String address(Model model) throws Exception {
//		logger.info("KhAddressController address");
//		Bb_MemberDto member = BbMemberService.allMember();
//		List<Bb_AddrDto> AddrList = BbAddrService.allAddress();
//		model.addAttribute("addr", AddrList);
//		model.addAttribute("member", member);
//		return "NewFile.tiles";	
//	}
	
	
	/*-------------------------------------------------------------------------------
	 * 주소 삭제
	 * --------------------------------------------------------------------------------*/
	@RequestMapping(value="addrDelete.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addrDelete(Model model, Bb_AddrDto addr) throws Exception {
		logger.info("KhAddressController addrUpdate");
		BbAddrService.addrDelete(model, addr);
		return "redirect:/goAddr.do";
	}
}













