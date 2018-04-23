package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbMenuDao;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_MenuDto;
import bb.com.a.model.Bb_SideDto;
import bb.com.a.service.BbMenuService;


@Service
public class BbMenuServiceImpl implements BbMenuService {
	@Autowired
	BbMenuDao bbaMenuDao;

	@Override
	public List<Bb_MenuDto> getMenuList() {
		return bbaMenuDao.getMenuList();
	}

	@Override
	public Bb_SideDto getDetailSide(int seq) {
		return bbaMenuDao.getDetailSide(seq);
	}

	@Override
	public Bb_BeverageDto getDetailBeverage(int seq) {
		return bbaMenuDao.getDetailBeverage(seq);
	}

	@Override
	public void deleteMenu(int seq) {
		bbaMenuDao.deleteMenu(seq);
		
	}

	@Override
	public Bb_BurgerDto getMenuDetailBurger(int seq) {
		return bbaMenuDao.getMenuDetailBurger(seq);
	}
}
