package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_OrderDto;

public interface BbOrderDao {
	
	/* ---------------------------------------------------------------------------
	 * 주문조회 가져오기
	 *----------------------------------------------------------------------------*/
	public List<Bb_OrderDto> getOrderInquiry(int seq);

}
