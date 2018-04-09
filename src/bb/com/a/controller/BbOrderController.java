package bb.com.a.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bb.com.a.service.BbMemberService;
import bb.com.a.service.BbOrderSerivce;

@Controller
public class BbOrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbOrderController.class);
	
	@Autowired
	BbOrderSerivce bbOrderService;
	
	

	/*--------------------------------------------------------------------------------------------
	 * 오더페이지 클릭했을때 
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="order.do", method=RequestMethod.GET)
	public String home(Model model) {
		logger.info("BbOrderController order");
		return "order.tiles";
	}

}
