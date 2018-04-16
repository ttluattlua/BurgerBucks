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
	
	/*----------------------------------------------------------------------------
	 * 비밀번호 변경 
	 * ----------------------------------------------------------------------------*/
	@Override
	public void updatePwd(Bb_MemberDto mem) {
		int count = sqlSession.update(ns+"updatePwd", mem);
		
	}
	
	
	/*----------------------------------------------------------------------------
	 * 회원정보 수정
	 * ----------------------------------------------------------------------------*/
	@Override
	public void updateProfile(Bb_MemberDto bmdto) {
		int count = sqlSession.update(ns+"updateProfile", bmdto);
		
	}
	
	/*----------------------------------------------------------------------------
	 * 회원정보 탈퇴
	 * ----------------------------------------------------------------------------*/
	@Override
	public void deleteMember(int seq) {
		int count = sqlSession.update(ns+"deleteMember", seq);
		
	}


	
	
	/*----------------------------------------------------------------------------
	 * 회원가입
	 * ----------------------------------------------------------------------------*/
	@Override
	public boolean addmember(Bb_MemberDto mem) throws Exception {
		int n = sqlSession.insert(ns + "addMember", mem);		
		return n>0?true:false;
	}

	/*----------------------------------------------------------------------------
	 * 중복확인
	 * ----------------------------------------------------------------------------*/
	@Override
	public int getID(Bb_MemberDto mem) {
		return sqlSession.selectOne(ns + "getID", mem);
	}




}
