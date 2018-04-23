package bb.com.a.dao.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbInquiryDao;
import bb.com.a.model.Bb_InquiryDto;


@Repository
public class BbInquiryDaoImpl implements BbInquiryDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String ns="BBInquiry.";

	/*--------------------------------------------------------------------------------------------
	 * 문의하기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public void sendInquiry(Bb_InquiryDto bidto) {
		sqlSession.insert(ns+"sendInquiry", bidto);		
	}
	
	
}
