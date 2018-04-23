package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_MemberDto;

public interface BbBurgerDao {
	
	/*----------------------------------------------------------------------------
	 * 버거 추가
	 * ----------------------------------------------------------------------------*/
  public boolean addBurger(Bb_BurgerDto burgerdto);
  
  /*----------------------------------------------------------------------------
   * 버거 수정
   * ----------------------------------------------------------------------------*/
  public void updBurger(Bb_BurgerDto burgerdto);
	
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (디폴트 버거만)
   * ----------------------------------------------------------------------------*/
  public List<Bb_BurgerDto> getBurgerList_default();
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (DIY 버거만)
   * ----------------------------------------------------------------------------*/
  public List<Bb_BurgerDto> getBurgerList_diy(Bb_MemberDto mem);
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (Default, DIY 버거)
   * ----------------------------------------------------------------------------*/
  public List<Bb_BurgerDto> getBurgerList_total(Bb_MemberDto mem);


}
