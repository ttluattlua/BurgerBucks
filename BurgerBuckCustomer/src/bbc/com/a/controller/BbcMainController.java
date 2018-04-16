package bbc.com.a.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

import com.google.gson.Gson;

import bbc.com.a.model.Bb_BeverageDto;
import bbc.com.a.model.Bb_BurgerDto;
import bbc.com.a.model.Bb_MenuDto;
import bbc.com.a.model.Bb_SideDto;

@Controller
public class BbcMainController {
	private static final Logger logger = LoggerFactory.getLogger(BbcMainController.class);
	
	/*--------------------------------------------------------------------------------------------
	 * 버거벅스 실행시 최초 페이지
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="main_logout.do", method=RequestMethod.GET)
	public String menulist(Model model) {
		logger.info("BbcPageController main_logout.do");
		
		return "main_logout.tiles";
	}
	

}
