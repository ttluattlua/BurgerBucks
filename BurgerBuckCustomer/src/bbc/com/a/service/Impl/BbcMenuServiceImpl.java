package bbc.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bbc.com.a.dao.BbcMenuDao;
import bbc.com.a.model.Bb_BeverageDto;
import bbc.com.a.model.Bb_MenuDto;
import bbc.com.a.model.Bb_SideDto;
import bbc.com.a.service.BbcMenuService;


@Service
public class BbcMenuServiceImpl implements BbcMenuService {
	@Autowired
	BbcMenuDao bbaMenuDao;

	@Override
	public List<Bb_MenuDto> getMenuList() {
		// TODO Auto-generated method stub
		return bbaMenuDao.getMenuList();
	}

	@Override
	public Bb_SideDto getDetailSide(int seq) {
		// TODO Auto-generated method stub
		return bbaMenuDao.getDetailSide(seq);
	}

	@Override
	public Bb_BeverageDto getDetailBeverage(int seq) {
		// TODO Auto-generated method stub
		return bbaMenuDao.getDetailBeverage(seq);
	}

	@Override
	public void deleteMenu(int seq) {
		bbaMenuDao.deleteMenu(seq);
		
	}
}
