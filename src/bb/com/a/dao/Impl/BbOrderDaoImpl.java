package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbOrderDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;


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
	
	
	

	
}
