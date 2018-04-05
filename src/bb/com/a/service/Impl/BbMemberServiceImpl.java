package bb.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.service.BbMemberService;

@Service
public class BbMemberServiceImpl implements BbMemberService {
	
	@Autowired
	BbMemberDao bbMemberDao;

	@Override
	public Bb_MemberDto allMember() throws Exception {
		// TODO Auto-generated method stub
		return bbMemberDao.allMember();
	}

	@Override
	public boolean addMember(Bb_MemberDto mem) throws Exception {
		// TODO Auto-generated method stub
		return bbMemberDao.addMember(mem);
	}
	
}
