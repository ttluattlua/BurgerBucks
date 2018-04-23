package bb.com.a.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbOrderDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;
import bb.com.a.model.Bb_MenuTableDto;
import bb.com.a.model.Bb_OrderMenuDto;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerTableDto;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.model.Bb_SideDto;


@Repository
public class BbOrderDaoImpl implements BbOrderDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String ns="BBOrder.";

	/* ---------------------------------------------------------------------------
	 * 주문조회 가져오기
	 *----------------------------------------------------------------------------*/
	@Override
	public List<Bb_OrderDto> getOrderInquiry(int seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+"getOrderInquiry", seq);
	}

	
	/* ---------------------------------------------------------------------------
	 * 주문 내역 주소 가져오기
	 *----------------------------------------------------------------------------*/
	@Override
	public Bb_AddrDto getAddrList(int member_addr) {
		return sqlSession.selectOne(ns + "getAddrList", member_addr);
	}

	/* ---------------------------------------------------------------------------
	 * 주문 내역 점포 가져오기
	 *----------------------------------------------------------------------------*/
	@Override
	public Bb_StoreDto getStoreList(int store_seq) {
		return sqlSession.selectOne(ns + "getStoreList", store_seq);
	}
	
	
	/*------------------------------------------------------------------------------
	* 주문 상세 가져오기 (ordermenu)
	* -----------------------------------------------------------------------------*/
	@Override
	public List<Bb_OrderMenuDto> getOrderMenuList() throws Exception {
		List<Bb_OrderMenuDto> orderMenuDtoList = new ArrayList<Bb_OrderMenuDto>();
		orderMenuDtoList = sqlSession.selectList(ns + "getOrderMenuList");
		return orderMenuDtoList;
	}
	
	
	

	/*------------------------------------------------------------------------------
	* 버거 리스트 가져오기
	* -----------------------------------------------------------------------------*/
	@Override
	public List<Bb_BurgerTableDto> getBurgerList() throws Exception {
		List<Bb_BurgerTableDto> list = new ArrayList<Bb_BurgerTableDto>();
		list = sqlSession.selectList(ns + "getBurgerList");
		return list;
	}
	
	/*------------------------------------------------------------------------------
	* 음료 리스트 가져오기
	* -----------------------------------------------------------------------------*/
	@Override
	public List<Bb_BeverageDto> getBeverageList() throws Exception {
		List<Bb_BeverageDto> list = new ArrayList<Bb_BeverageDto>();
		list = sqlSession.selectList(ns + "getBeverageList");
		return list;
	}
	
	
	/*------------------------------------------------------------------------------
	* 재료 리스트 가져오기
	* -----------------------------------------------------------------------------*/
	@Override
	public List<Bb_IngredientDto> getIngreList() throws Exception {
		return sqlSession.selectList(ns + "getIngreList");
	}
	

	/*------------------------------------------------------------------------------
	* 사이드 리스트 가져오기
	* -----------------------------------------------------------------------------*/
	@Override
	public List<Bb_SideDto> getSideList() throws Exception {
		List<Bb_SideDto> list = new ArrayList<Bb_SideDto>();
		list = sqlSession.selectList(ns + "getSideList");
		return list;
	}

	/*------------------------------------------------------------------------------
	* 메뉴 리스트 가져오기
	* -----------------------------------------------------------------------------*/
	@Override
	public Bb_MenuTableDto getMenuList(int seq) throws Exception {
		return sqlSession.selectOne(ns + "getMenuList", seq);
	}

	
	
}
