package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_FaqDto;

public interface BbFaqService {
	
	/*--------------------------------------------------------------------------------------------
	 * faq리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	public List<Bb_FaqDto> getFaqList();
	

}
