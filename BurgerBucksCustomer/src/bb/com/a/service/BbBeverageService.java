package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;

public interface BbBeverageService {
	  
  /*----------------------------------------------------------------------------
   * 음료 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  public List<Bb_BeverageDto> getBeverageList();

}
