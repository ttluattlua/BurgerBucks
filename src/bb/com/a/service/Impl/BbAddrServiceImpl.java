package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbAddrDao;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.service.BbAddrService;

@Service
public class BbAddrServiceImpl implements BbAddrService {

	@Autowired
	BbAddrDao BbAddressDao;
	
	@Override
	public List<Bb_AddrDto> allAddress() throws Exception{
		return BbAddressDao.allAddress();
	}
}
