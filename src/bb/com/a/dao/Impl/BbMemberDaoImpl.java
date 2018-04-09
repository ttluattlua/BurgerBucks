package bb.com.a.dao.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;

@Repository
public class BbMemberDaoImpl implements BbMemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String ns="BBMember.";
	/*----------------------------------------------------------------------------
	 * 로그인
	 * ----------------------------------------------------------------------------*/
	@Override
	public Bb_MemberDto login(Bb_MemberDto bmdto) {
		return sqlSession.selectOne(ns+"login", bmdto);
	}
	
	
	/*----------------------------------------------------------------------------
	 * 로그인 한 사람 최신주소가져오기 
	 * ----------------------------------------------------------------------------*/
	@Override
	public Bb_AddrDto getMostCurrentAddress(Bb_MemberDto bmdto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns+"getMostCurrentAddress", bmdto);
	}
	
	@Override
	public boolean addmember(Bb_MemberDto mem) throws Exception {
		int n = sqlSession.insert(ns + "addmember", mem);		
		return n>0?true:false;
	}

	@Override
	public int getID(Bb_MemberDto mem) {
		return sqlSession.selectOne(ns + "getID", mem);
	}

}
