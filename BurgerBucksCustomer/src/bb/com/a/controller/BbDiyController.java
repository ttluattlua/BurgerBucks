package bb.com.a.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BbDiyController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbDiyController.class);	
	
	//diy게시판으로이동
	@RequestMapping(value="diyboard.do", method=RequestMethod.GET)
	public String diyboard(Model model, HttpServletRequest req) throws Exception {
		logger.info("BbDiyController diyboard");
		return "diyboard.tiles";
	}

}
