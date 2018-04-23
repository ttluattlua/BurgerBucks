package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbBurgerDao;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.service.BbBurgerService;

@Service
public class BbBurgerServiceImpl implements BbBurgerService {

	@Autowired
	BbBurgerDao bbBurgerDao;

	@Override
	public List<Bb_IngredientDto> getIngredientList() {
		// TODO Auto-generated method stub
		return bbBurgerDao.getIngredientList();
	}
	
}
