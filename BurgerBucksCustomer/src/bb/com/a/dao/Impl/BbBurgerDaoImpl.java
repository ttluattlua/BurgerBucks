package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bba.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_BurgerDto;

@Repository
public class BbBurgerDaoImpl implements BbMemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private String ns="BBBurger.";
	
	/*----------------------------------------------------------------------------
	 * 버거 추가
	 * ----------------------------------------------------------------------------*/
	@Override
	public boolean addBurger(Bb_BurgerDto burgerdto) {
	  int n = sqlSession.insert(ns + "addMember", burgerdto);
    return n>0?true:false;
	}
	
	/*----------------------------------------------------------------------------
   * 버거 수정
   * ----------------------------------------------------------------------------*/
  @Override
  public void updBurger(Bb_BurgerDto burgerdto) {
    int count = sqlSession.update(ns+"updBurger", burgerdto);
  }
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (디폴트 버거만)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_default() {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist;
  }
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (DIY 버거만)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_diy(Bb_MemberDto mem) {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist; 
  }
  
  /*----------------------------------------------------------------------------
   * 버거 불러오기 (Default, DIY 버거)
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BurgerDto> getBurgerList_total(Bb_MemberDto mem) {
    List<Bb_BurgerDto> burgerlist = sqlSession.selectList(ns+"getBurgerList_default");
    return burgerlist;
  }
	
	
	/*----------------------------------------------------------------------------
	 * 로그인 한 사람 최신주소가져오기 
	 * ----------------------------------------------------------------------------*/
	@Override
	public Bb_AddrDto getMostCurrentAddress(Bb_MemberDto bmdto) {
		return sqlSession.selectOne(ns+"getMostCurrentAddress", bmdto);
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
