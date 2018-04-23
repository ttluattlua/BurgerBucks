package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbStoreDao;
import bb.com.a.model.Bb_StoreDto;
import bb.com.a.service.BbStoreSerivce;


@Service
public class BbStoreServiceImpl implements BbStoreSerivce {
	
	@Autowired
	BbStoreDao bbaStoreDao;

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
