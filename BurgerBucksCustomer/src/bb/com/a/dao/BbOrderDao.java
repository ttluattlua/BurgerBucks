package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_StoreDto;
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
}
