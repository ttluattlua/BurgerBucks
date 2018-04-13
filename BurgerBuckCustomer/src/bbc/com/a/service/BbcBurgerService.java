package bbc.com.a.service;

import java.util.List;

import bbc.com.a.model.Bb_IngredientDto;

public interface BbcBurgerService {
	
	/*--------------------------------------------------------------------------------------------
	 *버거 만들기 위한 재료들 가져오기
	 *-------------------------------------------------------------------------------------------*/	
	public List<Bb_IngredientDto> getIngredientList();

}
