package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;
import bb.com.a.model.Bb_MenuTableDto;
import bb.com.a.model.Bb_OrderMenuDto;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerTableDto;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.model.Bb_SideDto;
import bb.com.a.model.Bb_AddrDto;

public interface BbOrderDao {
	
	/* ---------------------------------------------------------------------------
	 * 주문조회 가져오기
	 *----------------------------------------------------------------------------*/
	public List<Bb_OrderDto> getOrderInquiry(int seq);

	//주문 내역 주소 가져오기
	public Bb_AddrDto getAddrList(int member_addr);
	
	//점포 리스트 불러오기
	public Bb_StoreDto getStoreList(int store_seq);
	
	
	//주문 상세 가져오기 (ordermenu)
	List<Bb_OrderMenuDto> getOrderMenuList() throws Exception;
	
	//메뉴 리스트 가져오기
	Bb_MenuTableDto getMenuList(int seq) throws Exception;
	
	
	
	
	//버거 불러오기
	List<Bb_BurgerTableDto> getBurgerList() throws Exception;
	
	//음료 불러오기
	List<Bb_BeverageDto> getBeverageList() throws Exception;
	
	//사이드 불러오기
	List<Bb_SideDto> getSideList() throws Exception;
	
	//재료 불러오기
	List<Bb_IngredientDto> getIngreList() throws Exception;
}
