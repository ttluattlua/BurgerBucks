package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbOrderDao;
import bb.com.a.model.Bb_OrderDto;


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
	

	
}
