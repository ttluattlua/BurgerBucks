package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbBurgerDao;
import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;

@Repository
public class BbBurgerDaoImpl implements BbBurgerDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String ns="BBBurger.";
	
	/*----------------------------------------------------------------------------
	 * 버거 추가
	 * ----------------------------------------------------------------------------*/
	@Override
	public boolean addBurger(Bb_BurgerDto burgerdto) {
	  int n = sqlSession.insert(ns + "addMember", burgerdto);
    return n>0?true:false;
	}
	
	/*----------------------------------------------------------------------------
   * 버거 수정
   * ----------------------------------------------------------------------------*/
  @Override
  public void updBurger(Bb_BurgerDto burgerdto) {
    int count = sqlSession.update(ns+"updBurger", burgerdto);
  }
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (디폴트 버거만)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_default() {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist;
  }
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (DIY 버거만)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_diy(Bb_MemberDto mem) {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist; 
  }
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (Default, DIY 버거)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_total(Bb_MemberDto mem) {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist;
  }
		

}
