package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbFaqDao;
import bb.com.a.model.Bb_FaqDto;
import bb.com.a.service.BbFaqService;

@Service
public class BbFaqServiceImpl implements BbFaqService {
	@Autowired
	BbFaqDao bbaFaqDao;

	/*--------------------------------------------------------------------------------------------
	 * faq리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_FaqDto> getFaqList() {
		// TODO Auto-generated method stub
		return bbaFaqDao.getFaqList();
	}
	
}
