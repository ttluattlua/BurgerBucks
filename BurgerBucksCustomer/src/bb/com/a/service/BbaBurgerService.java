package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_IngredientDto;

public interface BbaBurgerService {
	
	/*--------------------------------------------------------------------------------------------
	 *버거 만들기 위한 재료들 가져오기
	 *-------------------------------------------------------------------------------------------*/	
	public List<Bb_IngredientDto> getIngredientList();

}
