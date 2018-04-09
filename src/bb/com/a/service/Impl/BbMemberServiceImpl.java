package bb.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbMemberService;

@Service
public class BbMemberServiceImpl implements BbMemberService {
	@Autowired
	BbMemberDao bbMemberDao;

	@Override
	public Bb_MemberDto login(Bb_MemberDto bmdto) {
		return bbMemberDao.login(bmdto);
	}

	@Override
	public Bb_AddrDto getMostCurrentAddress(Bb_MemberDto bmdto) {
		// TODO Auto-generated method stub
		return bbMemberDao.getMostCurrentAddress(bmdto);
	}
	
	@Override
	public boolean addmember(Bb_MemberDto mem) throws Exception {
		return bbMemberDao.addmember(mem);
	}
	
	@Override
	public int getID(Bb_MemberDto mem) {
		return bbMemberDao.getID(mem);
	}
	
}
