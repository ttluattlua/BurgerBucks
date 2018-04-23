package bb.com.a.dao.Impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbFaqDao;
import bb.com.a.model.Bb_FaqDto;

@Repository
public class BbFaqDaoImpl implements BbFaqDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	private String ns="BBFaq.";

	/*--------------------------------------------------------------------------------------------
	 * faq리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_FaqDto> getFaqList() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(ns+"getFaqList");
	}

}
