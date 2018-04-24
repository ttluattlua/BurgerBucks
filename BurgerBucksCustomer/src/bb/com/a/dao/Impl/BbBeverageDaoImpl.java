package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbBeverageDao;
import bb.com.a.model.Bb_BeverageDto;


@Repository
public class BbBeverageDaoImpl implements BbBeverageDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String ns="BBBeverage.";
	  
	/*----------------------------------------------------------------------------
   * 음료 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BeverageDto> getBeverageList() {
    List<Bb_BeverageDto> beveragelist = sqlSession.selectList(ns+"getBeverageList");
    return beveragelist;
  }
		

}
