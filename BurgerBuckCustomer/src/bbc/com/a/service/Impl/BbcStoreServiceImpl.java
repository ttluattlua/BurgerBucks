package bbc.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bbc.com.a.dao.BbcStoreDao;
import bbc.com.a.model.Bb_StoreDto;
import bbc.com.a.service.BbcStoreSerivce;


@Service
public class BbcStoreServiceImpl implements BbcStoreSerivce {
	
	@Autowired
	BbcStoreDao bbaStoreDao;

	@Override
	public int registerStore(Bb_StoreDto bsdto) {
		return bbaStoreDao.registerStore(bsdto);
		
	}

	@Override
	public List<Bb_StoreDto> GetStoreList() {
		// TODO Auto-generated method stub
		return bbaStoreDao.GetStoreList();
	}

	@Override
	public Bb_StoreDto updateStore(int seq) {
		// TODO Auto-generated method stub
		return bbaStoreDao.updateStore(seq);
	}

	@Override
	public void updateStoreAf(Bb_StoreDto bsdto) {
		bbaStoreDao.updateStoreAf(bsdto);
		
	}

	@Override
	public void deleteStore(int seq) {
		bbaStoreDao.deleteStore(seq);
		
	}
	
	

}
