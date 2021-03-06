package bb.com.a.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;
import bb.com.a.service.BbAddrService;
import bb.com.a.service.BbBeverageService;
import bb.com.a.service.BbBurgerService;
import bb.com.a.service.BbMemberService;
import bb.com.a.service.BbOrderSerivce;
import bb.com.a.service.BbSideService;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_BurgerTableDto;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.model.Bb_MenuTableDto;
import bb.com.a.model.Bb_OrderDetailDto;
import bb.com.a.model.Bb_OrderMenuDto;
import bb.com.a.model.Bb_SideDto;

@Controller
public class BbOrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbOrderController.class);
	
	@Autowired
	BbOrderSerivce bbOrderService;
	@Autowired
	BbBurgerService bbBurgerService;
	@Autowired
	BbSideService bbSideService;
	@Autowired
	BbBeverageService bbBeverageService;
	@Autowired
	BbAddrService bbAddrService;
	@Autowired
	BbMemberService bbMemberService;
	
	

	/*--------------------------------------------------------------------------------------------
	 * 오더페이지 클릭했을때 
	 *-------------------------------------------------------------------------------------------*/
	@RequestMapping(value="order.do", method=RequestMethod.GET)
	public String home(Model model, HttpServletRequest req,  HttpServletResponse resp) throws Exception {
		logger.info("BbOrderController order");
	    
	    HttpSession session = req.getSession(true);
	    Bb_MemberDto login = (Bb_MemberDto)session.getAttribute("login");
	    
	    List<Bb_AddrDto> AddrList = bbAddrService.allAddress(login);
	    
	    if (AddrList.size()==0) {
	      resp.setCharacterEncoding("UTF-8"); 
	      resp.setContentType("text/html; charset=UTF-8");
	      
	      PrintWriter alerting = resp.getWriter();
	      alerting.println("<script language='javascript'>");
	      alerting.println("alert('주문을 하기 위한 주소를 추가해주세요');");
	      alerting.println("location.href='goAddr.do';"); 
	      
	      alerting.println("</script>"); 
	      alerting.close();
	    }
	    
	    List<Bb_BurgerDto> BurgerListDefault = bbBurgerService.getBurgerList_default();
	    List<Bb_BurgerDto> BurgerListDiy = bbBurgerService.getBurgerList_diy(login.getSeq());
	    List<Bb_SideDto> SideList = bbSideService.getSideList();
	    List<Bb_BeverageDto> BeverageList = bbBeverageService.getBeverageList();
	    List<Bb_IngredientDto> IngredientList = bbBurgerService.getIngredientList();
	    List<Bb_IngredientDto> bun_list = new ArrayList();
	    List<Bb_IngredientDto> patty_list = new ArrayList();
	    List<Bb_IngredientDto> vege_list = new ArrayList();
	    List<Bb_IngredientDto> etc_list = new ArrayList();
	    
	    
	    for (int i=0; i<IngredientList.size(); i++) {
	      switch (IngredientList.get(i).getTypes()) {
	      case 1: bun_list.add(IngredientList.get(i)); break;
	      case 2: patty_list.add(IngredientList.get(i)); break;
	      case 3: vege_list.add(IngredientList.get(i)); break;
	      case 4: etc_list.add(IngredientList.get(i)); break;
	      }
	    }
	    
	    Bb_IngredientDto first_bun = bun_list.get(0);
	    
	    Bb_OrderDto orderDto = bbMemberService.getOrderBasket(login);
	    
	    model.addAttribute("login", login);
	    
	    model.addAttribute("BurgerListDefault", BurgerListDefault);
	    model.addAttribute("BurgerListDiy", BurgerListDiy);
	    model.addAttribute("SideList", SideList);
	    model.addAttribute("BeverageList", BeverageList);
	    model.addAttribute("AddrList", AddrList);
	    
	    model.addAttribute("bun_list", bun_list);
	    model.addAttribute("patty_list", patty_list);
	    model.addAttribute("vege_list", vege_list);
	    model.addAttribute("etc_list", etc_list);
	    
	    model.addAttribute("first_bun", first_bun);
	    
	    model.addAttribute("orderDto", orderDto);
	    
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
		
		model.addAttribute("olist", olist); 			//order list
		
		
		return "order_history.tiles";
	}
	

	/*--------------------------------------------------------------------------------------------
	 * 주문 상세보기
	 *-------------------------------------------------------------------------------------------*/
	@ResponseBody
	@RequestMapping(value = "orderDetail.do", 
			method = {RequestMethod.POST,RequestMethod.GET})
	public List<Bb_OrderDetailDto> orderDetail(@RequestParam("seq") int seq, 
			HttpServletRequest request, Model model) throws Exception {
		logger.info("Welcome BbaOrderController orderDetail! "+ new Date());
		
		System.out.println("orderDetail 들어옴");
		
		//버거 리스트 가져오기
		List<Bb_BurgerTableDto> burgerList = bbOrderService.getBurgerList();
		
		//음료 리스트 가져오기
		List<Bb_BeverageDto> beverageList = bbOrderService.getBeverageList();
		
		//사이드 리스트 가져오기
		List<Bb_SideDto> sideList = bbOrderService.getSideList();

		//재료 리스트 가져오기
		List<Bb_IngredientDto> ingreList = bbOrderService.getIngreList();
		
				
		
		//주문 상세 가져오기 (ordermenu)
		//DB에서 전체 주문상세 (OrderMenu) 가져오기
		List<Bb_OrderMenuDto> orderMenuList = bbOrderService.getOrderMenuList(); 
		//seq 와 일치하는 부분 뽑아서 따로 리스트에 정리
		List<Bb_OrderMenuDto> orderDetail = new ArrayList<Bb_OrderMenuDto>();
		
		for (int i = 0; i < orderMenuList.size(); i++) {
			if(orderMenuList.get(i).getOrder_seq()==seq) {
				orderDetail.add(orderMenuList.get(i));
			}
		}
		
		
		//주문 상세에 있는 메뉴 시퀀스를 이용해서 메뉴 테이블 가져오기
		List<Bb_MenuTableDto> menuList= new ArrayList<Bb_MenuTableDto>();
		for (int i = 0; i < orderDetail.size(); i++) {
			menuList.add(bbOrderService.getMenuList(orderDetail.get(i).getMenu_seq()));
		}
		

		//Bb_OrderMenuDto에 있는 Bb_MenuTableDto menu; 부분 DTO로 넣기
		for (int i = 0; i < orderDetail.size(); i++) {
			orderDetail.get(i).setMenu(new Bb_MenuTableDto(
						orderDetail.get(i).getSeq(),	//int seq;
						
						menuList.get(i).getBurger(),	//burger seq
						menuList.get(i).getSide(),		//side seq
						menuList.get(i).getBeverage(),	//beverage seq
						menuList.get(i).getName(),		//String name;
						menuList.get(i).getCreator(),	//int creator;
						menuList.get(i).getPrice(),		//int price;
						menuList.get(i).getCal(),		//int cal;
						menuList.get(i).getDel()		//int del;
					));
			
			System.out.println("orderDetail : " + orderDetail.get(i).toString());
		}
		
		
		//메뉴 테이블 (menuList) 에 있는 버거, 사이드, 음료 디티오 형식으로 넣기 

		
		List<Bb_OrderDetailDto> odList = new ArrayList<Bb_OrderDetailDto>();
		for (int i = 0; i < orderDetail.size(); i++) {
			
			//버거 찾기
			String burgerName = "";
			String sideName = "";
			String beverageName = "";
			
			for(int j = 0; j < burgerList.size(); j++) {
				if(orderDetail.get(i).getMenu().getBurger()==burgerList.get(j).getSeq()) {
					burgerName = burgerList.get(j).getName();
				}
			}
			
			for(int j = 0; j < beverageList.size(); j++) {
				if(orderDetail.get(i).getMenu().getBeverage()==beverageList.get(j).getSeq()) {
					beverageName = beverageList.get(j).getName();
				}
			}
			
			for(int j = 0; j < sideList.size(); j++) {
				if(orderDetail.get(i).getMenu().getSide()==sideList.get(j).getSeq()) {
					sideName = sideList.get(j).getName();
				}
			}
			
			for(int z = 0; z < burgerList.size(); z++) {
				System.out.println("burgerList : " + burgerList.get(z).toString());
			}
			//버거 재료 찾아 넣기
			//버거 시퀀스
			String burgerIngre = "";
			for(int j = 0; j < burgerList.size(); j++) {
				if(orderDetail.get(i).getMenu().getBurger() == burgerList.get(j).getSeq()) {
					
					burgerIngre += "번 : " ;
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getBread() == ingreList.get(z).getSeq()) {
							burgerIngre += ingreList.get(z).getName();
						}
					}
		
					//재료  0-X / 1-번 / 2-패티 / 3-채소 / 4-기타
					burgerIngre += "  /  재료 : " ;
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient01() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient01()!=0) {
							burgerIngre += ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient02() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient02()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient03() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient03()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient04() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient04()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient05() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient05()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient06() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient06()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient07() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient07()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient08() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient08()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}
					
					for(int z = 0; z < ingreList.size(); z++) {
						if(burgerList.get(j).getIngredient09() == ingreList.get(z).getSeq() && burgerList.get(j).getIngredient09()!=0) {
							burgerIngre += " - " + ingreList.get(z).getName();
						}
					}				
				}
			}
			
				
			odList.add(new Bb_OrderDetailDto(
					orderDetail.get(i).getOrder_seq(),	//order_seq
					orderDetail.get(i).getPrice(), 		//orderMenu_price 
					orderDetail.get(i).getQuantity(),		//orderMenu_quantity 
					orderDetail.get(i).getMenu_seq(), 	//menu_seq
					orderDetail.get(i).getMenu().getName(), //menu_name
					orderDetail.get(i).getMenu().getBurger(), //burger_seq,
					burgerName, //burger_name,
					burgerIngre, //재료
					beverageName, //beverage_name
					sideName //side_name
					));
		}
		
		for(int i = 0; i < odList.size(); i++) {
			System.out.println("orderDetail의 odList 최종 : " + odList.get(i).toString());
		}
		
		//정리 된 리스트를 한번에 출력
		model.addAttribute("odList", odList);
		
		return odList;
	}
	
	/*--------------------------------------------------------------------------------------------
	   * 주문 완료
	   *-------------------------------------------------------------------------------------------*/
		@ResponseBody
		@RequestMapping(value="orderEnd.do", method = {RequestMethod.POST,RequestMethod.GET})
	  public int orderEnd(@RequestBody Map<String, Object> map) {
	    logger.info("BbOrderController orderEnd");
	    
	    
	    System.out.println("--------------------------오더 등록-----------------------------");
	    int seq = (int)map.get("seq");
	    System.out.println("seq :"+seq );
	    
	    int member_seq = (int)map.get("member_seq");
	    System.out.println("member_seq :"+member_seq);
	    
	    int member_addr = Integer.parseInt((String)map.get("member_addr"));
	    System.out.println("member_addr :"+member_addr);
	    
	    int store_seq = (int)map.get("store_seq");
	    System.out.println("store_seq :"+ store_seq);
	    
	    int price = (int)map.get("price");
	    System.out.println("price :"+ price);
	    
	    String order_date = (String)map.get("order_date");
	    System.out.println("order_date :"+ order_date);
	    
	    int status = (int)map.get("status");
	    System.out.println("status :"+ status);
	    
	    int del = (int)map.get("del");
	    System.out.println("del :"+ del);

	    int orderSequence = bbMemberService.addOrder(new Bb_OrderDto(seq, member_seq, member_addr, store_seq, order_date, status, price, del));
	    
	    
	    return orderSequence;
	  }
		
		/*--------------------------------------------------------------------------------------------
	   * 주문 완료
	   *-------------------------------------------------------------------------------------------*/
	  @ResponseBody
	  @RequestMapping(value="menuEnd.do", method = {RequestMethod.POST,RequestMethod.GET})
	  public int menuEnd(@RequestBody Map<String, Object> map) {
	    logger.info("BbOrderController menuEnd");
	    
	    System.out.println("--------------------------메뉴 등록-----------------------------");
	    
	    int burgerSeq = (int)map.get("burgerSeq");
	    System.out.println("burgerSeq : "+ burgerSeq );
	    
	    int sideSeq = (int)map.get("sideSeq");
	    System.out.println("sideSeq : "+sideSeq);
	    
	    int beverageSeq = (int)map.get("beverageSeq");
	    System.out.println("beverageSeq : "+beverageSeq);
	    
	    String menuName = (String)map.get("menuName");
	    System.out.println("menuName : "+ menuName);
	    
	    int userSeq = (int)map.get("userSeq");
	    System.out.println("userSeq : "+ userSeq);
	    
	    int price = (int)map.get("price");
	    System.out.println("price : "+ price);
	    
	    int cal = (int)map.get("cal");
	    System.out.println("cal : "+ cal);
	    
	    int orderSeq = (int)map.get("orderSeq");
	    System.out.println("orderSeq : "+ orderSeq);
	    
	    int menuSeq = bbMemberService.addMenu(new Bb_MenuTableDto(0, burgerSeq, sideSeq, beverageSeq, menuName, userSeq, price, cal, 0));
	    System.out.println("menuSeq : "+ menuSeq);
	        
	    return menuSeq;
	  }
	  
	  /*--------------------------------------------------------------------------------------------
	   * 주문 완료
	   *-------------------------------------------------------------------------------------------*/
	  @ResponseBody
	  @RequestMapping(value="orderMenuEnd.do", method = {RequestMethod.POST,RequestMethod.GET})
	  public String orderMenuEnd(@RequestBody Map<String, Object> map) {
	    logger.info("BbOrderController orderMenuEnd");
	    
	    System.out.println("--------------------------오더 메뉴 등록-----------------------------");
	    
	    int price = (int)map.get("price");
	    System.out.println("price : "+ price);
	    
	    int cal = (int)map.get("cal");
	    System.out.println("cal : "+ cal);
	    
	    int orderSeq = (int)map.get("orderSeq");
	    System.out.println("orderSeq : "+ orderSeq);
	    
	    int menuSeq = (int)map.get("menuSeq");
	    System.out.println("menuSeq : "+ menuSeq);
	    
	    bbMemberService.addOrderMenu(new Bb_OrderMenuDto(0, orderSeq, menuSeq, 1, price, 0));
	        
	    return "success";
	  }

}
