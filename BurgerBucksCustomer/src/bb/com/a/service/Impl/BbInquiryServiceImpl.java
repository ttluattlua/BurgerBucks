package bb.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbInquiryDao;
import bb.com.a.model.Bb_InquiryDto;
import bb.com.a.service.BbInquiryService;

@Service
public class BbInquiryServiceImpl implements BbInquiryService {

	@Autowired
	BbInquiryDao bbInquiryDao;

	/*--------------------------------------------------------------------------------------------
	 * 문의하기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public void sendInquiry(Bb_InquiryDto bidto) {
		bbInquiryDao.sendInquiry(bidto);
		
	}
	

}
