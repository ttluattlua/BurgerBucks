package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import bb.com.a.dao.BbAddrDao;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbAddrService;

@Service
public class BbAddrServiceImpl implements BbAddrService {


	@Autowired
	BbAddrDao BbAddressDao;
	
	@Override
	public List<Bb_AddrDto> allAddress(Bb_MemberDto login) throws Exception{
		return BbAddressDao.allAddress(login);
	}

	@Override
	public boolean addrAdd(Model model, Bb_AddrDto dto) throws Exception {
		return BbAddressDao.addrAdd(model, dto);
	}

	@Override
	public boolean addrUpdate(Model model, Bb_AddrDto addr) throws Exception {
		// TODO Auto-generated method stub
		return BbAddressDao.addrUpdate(model, addr);
	}

	@Override
	public boolean addrDelete(Model model, Bb_AddrDto addr) throws Exception {
		// TODO Auto-generated method stub
		return BbAddressDao.addrDelete(model, addr);
	}
}
