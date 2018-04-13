package bbc.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bbc.com.a.dao.BbcBurgerDao;
import bbc.com.a.model.Bb_IngredientDto;

@Repository
public class BbcBurgerDaoImpl implements BbcBurgerDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String ns = "BBABurger.";
	/*--------------------------------------------------------------------------------------------
	 *버거 만들기 위한 재료들 가져오기
	 *-------------------------------------------------------------------------------------------*/	
	@Override
	public List<Bb_IngredientDto> getIngredientList() {
		System.out.println("BbaBurgerDaoImpl getIngredientList");
		List<Bb_IngredientDto> IngList = sqlSession.selectList(ns+"getIngredientList");
		
		for (Bb_IngredientDto bb_IngredientDto : IngList) {
			System.out.println(bb_IngredientDto.toString());
		}
		return IngList;
	}
}
