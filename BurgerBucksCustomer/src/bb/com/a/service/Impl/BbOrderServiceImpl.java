package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbOrderDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;
import bb.com.a.service.BbOrderSerivce;
import bb.com.a.model.Bb_MenuTableDto;
import bb.com.a.model.Bb_OrderMenuDto;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerTableDto;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.model.Bb_SideDto;

@Service
public class BbOrderServiceImpl implements BbOrderSerivce {

	@Autowired
	BbOrderDao bbOrderDao;

	/* ---------------------------------------------------------------------------
	 * 주문조회 가져오기
	 *----------------------------------------------------------------------------*/
	@Override
	public List<Bb_OrderDto> getOrderInquiry(int seq) {
		return bbOrderDao.getOrderInquiry(seq);
	}

	/* ---------------------------------------------------------------------------
	 * 주문 내역 주소 가져오기
	 *----------------------------------------------------------------------------*/
	@Override
	public Bb_AddrDto getAddrList(int member_addr) {
		return bbOrderDao.getAddrList(member_addr);
	}

	/* ---------------------------------------------------------------------------
	 * 주문 내역 점포 가져오기
	 *----------------------------------------------------------------------------*/
	@Override
	public Bb_StoreDto getStoreList(int store_seq) {
		return bbOrderDao.getStoreList(store_seq);
	}
	
	/*--------------------------------------------------------------------------------------------
	 * 주문 상세 가져오기 (orderMenu)
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_OrderMenuDto> getOrderMenuList() throws Exception {
		return bbOrderDao.getOrderMenuList();
	}

	/*--------------------------------------------------------------------------------------------
	 * 메뉴 리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public Bb_MenuTableDto getMenuList(int seq) throws Exception {
		return bbOrderDao.getMenuList(seq);
	}

	
	/*--------------------------------------------------------------------------------------------
	 * 버거 리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_BurgerTableDto> getBurgerList() throws Exception {
		return bbOrderDao.getBurgerList();
	}

	/*--------------------------------------------------------------------------------------------
	 * 음료 리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_BeverageDto> getBeverageList() throws Exception {
		return bbOrderDao.getBeverageList();
	}

	/*--------------------------------------------------------------------------------------------
	 * 사이드 리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_SideDto> getSideList() throws Exception {
		return bbOrderDao.getSideList();
	}

	/*------------------------------------------------------------------------------
	* 재료 리스트 가져오기
	* -----------------------------------------------------------------------------*/
	@Override
	public List<Bb_IngredientDto> getIngreList() throws Exception {
		return bbOrderDao.getIngreList();
	}
	
	
	
	
}
