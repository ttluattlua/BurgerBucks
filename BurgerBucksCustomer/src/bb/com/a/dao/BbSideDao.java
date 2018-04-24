package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_SideDto;

public interface BbSideDao {
	
  /*----------------------------------------------------------------------------
   * 사이드 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  public List<Bb_SideDto> getSideList();
  

}
