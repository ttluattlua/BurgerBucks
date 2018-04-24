package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.model.Bb_SideDto;

public interface BbSideService {
	  
  /*----------------------------------------------------------------------------
   * 사이드 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  public List<Bb_SideDto> getSideList();

}
