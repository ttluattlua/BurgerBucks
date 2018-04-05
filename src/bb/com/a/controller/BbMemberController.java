package bb.com.a.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="regi.do", method=RequestMethod.GET)
	public String regi(Model model) {
		logger.info("BbMemberController addMember");
		return "regi.tiles";
	}
	
	@RequestMapping(value="regiAf.do", method=RequestMethod.GET)
	public String regiAg(Model model) {
		logger.info("BbMemberController addMember");
		return "regi.tiles";
	}
}
