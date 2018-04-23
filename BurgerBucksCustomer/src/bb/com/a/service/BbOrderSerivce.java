package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;

public interface BbOrderSerivce {

	/* ---------------------------------------------------------------------------
	 * 주문조회 가져오기
	 *----------------------------------------------------------------------------*/
	public List<Bb_OrderDto> getOrderInquiry(int seq);
	
	//주문 내역 주소 가져오기
	public Bb_AddrDto getAddrList(int member_addr);
	
	//주문 내역 점포 가져오기
	public Bb_StoreDto getStoreList(int store_seq);
}
