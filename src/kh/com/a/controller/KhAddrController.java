package kh.com.a.controller;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.a.model.Bb_AddrDto;
import kh.com.a.service.KhAddrService;


@Controller
public class KhAddrController {
	private static final Logger logger = LoggerFactory.getLogger(KhAddrController.class);
	
	@Autowired
	KhAddrService khAddrService;
	
	@RequestMapping(value="address.do", method=RequestMethod.GET)
	public String address(Model model) {
		logger.info("KhAddressController address");
		return "NewFile";	
	}
	@RequestMapping(value="addaddress.do", method=RequestMethod.GET )
	public String addAddress(Model model) throws Exception {
		logger.info("KhAddressController addressAdd");
		Bb_AddrDto dto = khAddrService.allAddress();
		model.addAttribute("dto", dto);
		return "NewFile1";	
	}

	@RequestMapping(value="addaddressAf.do", method=RequestMethod.GET)
	public String addAddressAf(Model model) {
		logger.info("KhAddressController addressAddAf");
		return "NewFile2";	
	}


	
}













