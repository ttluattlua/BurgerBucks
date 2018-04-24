package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_BeverageDto;;

public interface BbBeverageDao {
	
  /*----------------------------------------------------------------------------
   * 음료 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  public List<Bb_BeverageDto> getBeverageList();
  

}
