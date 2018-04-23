package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_MenuDto;
import bb.com.a.model.Bb_SideDto;

public interface BbMenuService {
	
	public List<Bb_MenuDto> getMenuList();
	
	public Bb_SideDto getDetailSide(int seq);
	
	public Bb_BeverageDto getDetailBeverage(int seq);
	
	public void deleteMenu(int seq);
	
	/*--------------------------------------------------------------------------------------------
	 *메뉴버거디테일가져오기
	 *-------------------------------------------------------------------------------------------*/
	public Bb_BurgerDto getMenuDetailBurger(int seq);


}
