package kh.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.a.dao.KhAddrDao;

import kh.com.a.model.Bb_AddrDto;
import kh.com.a.service.KhAddrService;

@Service
public class KhAddrServiceImpl implements KhAddrService {

	@Autowired
	KhAddrDao khAddressDao;
	
	@Override
	public Bb_AddrDto allAddress() throws Exception{
		return khAddressDao.allAddress();
	}
}
