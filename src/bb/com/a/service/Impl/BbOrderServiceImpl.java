package bb.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbOrderDao;
import bb.com.a.service.BbOrderSerivce;

@Service
public class BbOrderServiceImpl implements BbOrderSerivce {

	@Autowired
	BbOrderDao bbOrderDao;
	
	
}
