package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbOrderDao;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.service.BbOrderSerivce;

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
	
	
}
