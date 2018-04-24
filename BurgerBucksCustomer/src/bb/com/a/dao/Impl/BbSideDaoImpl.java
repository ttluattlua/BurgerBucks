package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbSideDao;
import bb.com.a.model.Bb_SideDto;


@Repository
public class BbSideDaoImpl implements BbSideDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String ns="BBSide.";
	  
  /*----------------------------------------------------------------------------
   * 재료 불러오기
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_SideDto> getSideList() {
    List<Bb_SideDto> sidelist = sqlSession.selectList(ns+"getSideList");
    return sidelist;
  }
		

}
