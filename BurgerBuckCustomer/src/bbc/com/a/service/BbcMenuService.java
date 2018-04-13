package bbc.com.a.service;

import java.util.List;

import bbc.com.a.model.Bb_BeverageDto;
import bbc.com.a.model.Bb_MenuDto;
import bbc.com.a.model.Bb_SideDto;

public interface BbcMenuService {
	
	public List<Bb_MenuDto> getMenuList();
	
	public Bb_SideDto getDetailSide(int seq);
	
	public Bb_BeverageDto getDetailBeverage(int seq);
	
	public void deleteMenu(int seq);

}
