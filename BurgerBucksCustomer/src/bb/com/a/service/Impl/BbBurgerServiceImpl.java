package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbBurgerDao;
import bb.com.a.model.Bb_BurgerDto;
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

	@Override
	public boolean addBurger(Bb_BurgerDto burgerdto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updBurger(Bb_BurgerDto burgerdto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Bb_BurgerDto getBurger(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bb_BurgerDto> getBurgerList_diy(int creator) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bb_BurgerDto> getBurgerList_default() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bb_BurgerDto> getBurgerList_total(int creator) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
