package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_MenuDto;
import bb.com.a.model.Bb_SideDto;

public interface BbMenuDao {

	/*--------------------------------------------------------------------------------------------
	 *menu리스트가져오기 
	 *-------------------------------------------------------------------------------------------*/
	
	public List<Bb_MenuDto> getMenuList();
	

	/*--------------------------------------------------------------------------------------------
	 *menu 디테일 사이드 가져오기 
	 *-------------------------------------------------------------------------------------------*/
	
	public Bb_SideDto getDetailSide(int seq);
	

	/*--------------------------------------------------------------------------------------------
	 *menu 디테일 음료 가져오기 
	 *-------------------------------------------------------------------------------------------*/
	
	public Bb_BeverageDto getDetailBeverage(int seq);
	
	/*--------------------------------------------------------------------------------------------
	 *menu 지우기
	 *-------------------------------------------------------------------------------------------*/
	
	public void deleteMenu(int seq);
	
	/*--------------------------------------------------------------------------------------------
	 *버거 재료 디테일 가져오기 
	 *-------------------------------------------------------------------------------------------*/
	
	public Bb_BurgerDto getMenuDetailBurger(int seq);
	
}
