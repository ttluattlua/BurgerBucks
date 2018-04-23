package bb.com.a.controller;

import java.util.ArrayList;
import java.util.Calendar;
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

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;
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
		
		
	/*	 
		// Java 시간 더하기
		Calendar cal = Calendar.getInstance();
		Bb_OrderDto oDto = new Bb_OrderDto();
		
		for (int i = 0; i < orderList.size(); i++) {
			cal.setTime(orderList.get(i).getOrder_date());
			cal.add(Calendar.MINUTE, 30); //배달 예상시간 30분 후 (주문접수)
			oDto.setOrder_date(cal.getTime());
			orderList.set(i, oDto);
		}
		*/
		model.addAttribute("orderList", orderList);
		return "order_inquiry.tiles";
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 주문 조회 페이지로 이동
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="order_history.do", method=RequestMethod.GET)
	public String order_history(HttpServletRequest req, Model model) {
		logger.info("BbMyPageController order_history");
		
		HttpSession session = req.getSession(true);
		Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");

	
		
		List<Bb_OrderDto> olist = bbOrderService.getOrderInquiry(login.getSeq());
		if(olist.size() == 0) {
			System.out.println("주문내역없음");
		}else {
			System.out.println("주문내역있음");
			for (Bb_OrderDto bb_OrderDto : olist) {
				System.out.println(bb_OrderDto.toString());
			}
		}
		
		//멤버 dto 가져오기
		/*List<Bb_MemberDto> memberList = new ArrayList<Bb_MemberDto>();
		for (int i = 0; i < olist.size(); i++) {
			memberList.add(bbOrderService.getMemberList(olist.get(i).getMember_seq()));
		}*/
		
		//주소 상세 가져오기
		List<Bb_AddrDto> addrList = new ArrayList<Bb_AddrDto>();
		for (int i = 0; i < olist.size(); i++) {
			addrList.add(bbOrderService.getAddrList(olist.get(i).getMember_addr()));
		}
		
		//점포 dto 가져오기
		List<Bb_StoreDto> storeList = new ArrayList<Bb_StoreDto>();
		for (int i = 0; i < olist.size(); i++) {
			storeList.add(bbOrderService.getStoreList(olist.get(i).getStore_seq()));
		}
		
		model.addAttribute("olist", olist); 			//order list
		model.addAttribute("addrList", addrList);		//address list
		model.addAttribute("storeList", storeList);		//store list
		
		
		
		return "order_history.tiles";
	}
	


}
