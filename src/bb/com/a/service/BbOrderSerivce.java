package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_OrderDto;

public interface BbOrderSerivce {

	/* ---------------------------------------------------------------------------
	 * 주문조회 가져오기
	 *----------------------------------------------------------------------------*/
	public List<Bb_OrderDto> getOrderInquiry(int seq);
}
