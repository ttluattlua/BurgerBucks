package bb.com.a.dao;

import bb.com.a.model.Bb_InquiryDto;

public interface BbInquiryDao {
	
	/*--------------------------------------------------------------------------------------------
	 * 문의하기
	 *-------------------------------------------------------------------------------------------*/
	public void sendInquiry(Bb_InquiryDto bidto);

}
