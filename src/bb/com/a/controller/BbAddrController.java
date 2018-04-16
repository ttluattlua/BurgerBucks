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
	public String goAddr(Model model) throws Exception {
		logger.info("KhAddressController goAddr");
		List<Bb_AddrDto> addrList = BbAddrService.allAddress();
		System.out.println("addrList in Controller" + addrList.get(0));
		model.addAttribute("list", addrList);
		return "goAddr.tiles";	
	}

	
	/*-------------------------------------------------------------------------------
	 * 주소 추가
	 * --------------------------------------------------------------------------------*/

	@RequestMapping(value="addrAdd.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String googlemap(Model model) throws Exception {
		logger.info("KhAddressController googlemap");
		return "addrAdd.tiles";	
	}
	@RequestMapping(value="addrAddAf.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addrAddAf(Model model, Bb_AddrDto addr) throws Exception {
		logger.info("KhAddressController addrAddAf");
		System.out.println("bfService: " + addr);
		BbAddrService.addrAdd(model, addr);
		model.addAttribute("addr",addr);
		return "redirect:/goAddr.do";
		
	/*-------------------------------------------------------------------------------
	 * 주소 수정
	 * --------------------------------------------------------------------------------*/
	}
	@RequestMapping(value="addrUpdate.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addrUpdate(Model model, int seq) throws Exception {
		logger.info("KhAddressController addrUpdate");
		model.addAttribute("seq", seq);
		System.out.println("update seq:" + seq);
		return "addrUpdate.tiles";
	}
	@RequestMapping(value="addrUpdateAf.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addrUpdateAf(Model model, Bb_AddrDto addr) throws Exception {
		logger.info("KhAddressController addrUpdate");
		BbAddrService.addrUpdate(model, addr);
		return "redirect:/goAddr.do";
	}
	
	/*-------------------------------------------------------------------------------
	 * 주소 삭제
	 * --------------------------------------------------------------------------------*/
	@RequestMapping(value="addrDelete.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String addrDelete(Model model, Bb_AddrDto addr) throws Exception {
		logger.info("KhAddressController addrDelete");
		System.out.println("====================addrDelete.do======================");
		System.out.println(addr.toString());
		BbAddrService.addrDelete(model, addr);
		return "redirect:/goAddr.do";
	}
}













