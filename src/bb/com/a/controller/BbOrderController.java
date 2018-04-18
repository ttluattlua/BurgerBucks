package bb.com.a.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_OrderDto;
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
	
	/*--------------------------------------------------------------------------------------------
	 * 주문 내역 페이지로 이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="order_inquiry.do", method=RequestMethod.GET)
	public String order_inquiry(HttpServletRequest req, Model model) {
		logger.info("BbMyPageController order_inquiry");
		HttpSession session = req.getSession(true);
		Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
		List<Bb_OrderDto> orderList = bbOrderService.getOrderInquiry(login.getSeq());
		if(orderList.size() == 0) {
			System.out.println("주문내역없음");
		}else {
			System.out.println("주문내역있음");
			for (Bb_OrderDto bb_OrderDto : orderList) {
				System.out.println(bb_OrderDto.toString());
			}
		}
		model.addAttribute("orderList", orderList);
		return "order_inquiry.tiles";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 주문 조회 페이지로 이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="order_history.do", method=RequestMethod.GET)
	public String order_history() {
		logger.info("BbMyPageController order_history");
		return "order_history.tiles";
	}
	


}
