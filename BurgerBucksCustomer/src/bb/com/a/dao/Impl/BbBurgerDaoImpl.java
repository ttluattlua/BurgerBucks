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
import bb.com.a.model.Bb_IngredientDto;

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
   * 버거 불러오기 (특정 버거)
   * ----------------------------------------------------------------------------*/
  @Override
  public Bb_BurgerDto getBurger(int seq) {
    return sqlSession.selectOne(ns+"getBurger", seq);
  }
    
  /*----------------------------------------------------------------------------
   * 버거 리스트 불러오기 (DIY 버거)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_diy(int creator) {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_diy", creator);
    return burgerlist;
  }
  
  /*----------------------------------------------------------------------------
   * 버거 리스트 불러오기 (Default 버거)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_default() {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist;
  }
  
  /*----------------------------------------------------------------------------
   * 버거 리스트 불러오기 (DIY, Default 버거)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_total(int creator) {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_total", creator);
    return burgerlist;
  }
  
  /*----------------------------------------------------------------------------
   * 재료 불러오기
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_IngredientDto> getIngredientList() {
    List<Bb_IngredientDto> ingredientlist = sqlSession.selectList(ns+"getBurgerList_default");
    return ingredientlist;
  }
		

}
