package bbc.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bbc.com.a.dao.BbcBurgerDao;
import bbc.com.a.model.Bb_IngredientDto;
import bbc.com.a.service.BbcBurgerService;

@Service
public class BbcBurgerServiceImpl implements BbcBurgerService {

	@Autowired
	BbcBurgerDao bbaBurgerDao;

	@Override
	public List<Bb_IngredientDto> getIngredientList() {
		// TODO Auto-generated method stub
		return bbaBurgerDao.getIngredientList();
	}
	
}
