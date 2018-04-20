package bb.com.a.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bb.com.a.model.Bb_AddrDto;

@Controller
public class BbDiyController {

	private static final Logger logger = LoggerFactory.getLogger(BbDiyController.class);
	/*-------------------------------------------------------------------------------
	 * 주소 추가 폼으로 이동
	 * --------------------------------------------------------------------------------*/	
	
	@RequestMapping(value="diyboard.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String diyboard(Model model) throws Exception {
		logger.info("KhAddressController goAddr");
		/*List<Bb_AddrDto> addrList = BbAddrService.allAddress();
		System.out.println("addrList in Controller" + addrList.get(0));
		model.addAttribute("list", addrList);*/
		return "diyboard.tiles";	
	}

	
}
