package bb.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.service.BbMemberService;

@Service
public class BbMemberServiceImpl implements BbMemberService {
	@Autowired
	BbMemberDao bbMemberDao;
	
}
