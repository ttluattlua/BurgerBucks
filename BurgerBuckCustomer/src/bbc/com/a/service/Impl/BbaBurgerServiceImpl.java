package bbc.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bbc.com.a.dao.BbaBurgerDao;
import bbc.com.a.model.Bb_IngredientDto;
import bbc.com.a.service.BbaBurgerService;

@Service
public class BbaBurgerServiceImpl implements BbaBurgerService {

	@Autowired
	BbaBurgerDao bbaBurgerDao;

	@Override
	public List<Bb_IngredientDto> getIngredientList() {
		// TODO Auto-generated method stub
		return bbaBurgerDao.getIngredientList();
	}
	
}
