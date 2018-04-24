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
	public int addmember(Bb_MemberDto mem) throws Exception {
		int count = sqlSession.insert(ns + "addMember", mem);		
		int seq = mem.getSeq();
		System.out.println("멤버가입한 후 뽑아오는 시퀀스:"+seq);
		return seq;
	}

	/*----------------------------------------------------------------------------
	 * 중복확인
	 * ----------------------------------------------------------------------------*/
	@Override
	public int getID(Bb_MemberDto mem) {
		return sqlSession.selectOne(ns + "getID", mem);
	}


	/*----------------------------------------------------------------------------
	 *비밀번호변경
	 * ----------------------------------------------------------------------------*/
	@Override
	public void changePwd(Bb_MemberDto mem) {
		sqlSession.update(ns+"changePwd", mem);
		
	}

	/*----------------------------------------------------------------------------
	 * 가입 후 장바구니 만들기
	 * ----------------------------------------------------------------------------*/
	@Override
	public int makeOrderBasket(Bb_MemberDto mem) {
		System.out.println("장바구니 만들기전 seq: "+ mem.getSeq());
		int count = sqlSession.insert(ns+"makeOrderBasket", mem);
		int seq = mem.getSeq();
		System.out.println("장바구니 만든 후 seq변화: "+ seq);
		return seq;
	}




}
