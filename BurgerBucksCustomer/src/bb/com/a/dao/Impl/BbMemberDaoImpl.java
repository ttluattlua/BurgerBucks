package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_MenuDto;
import bb.com.a.model.Bb_MenuTableDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_OrderMenuDto;

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
	
	/*----------------------------------------------------------------------------
	   * 장바구니 불러오기
	   * ----------------------------------------------------------------------------*/
		@Override
		public Bb_OrderDto getOrderBasket(Bb_MemberDto mem) {
	    return sqlSession.selectOne(ns + "getOrderBasket", mem);
	  }
	  
	  /*----------------------------------------------------------------------------
	   * 장바구니에 상품 추가하기
	   * ----------------------------------------------------------------------------*/
		@Override
		public void addOrderBasketMenu(Bb_MenuDto menu) {
	    
	  }
	  
	  /*----------------------------------------------------------------------------
	   * 장바구니 리스트
	   * ----------------------------------------------------------------------------*/
		@Override
		public List<Bb_OrderMenuDto> getOrderBasketMenu(Bb_OrderDto order){
	    return null;
	    
	  }
		
		/*----------------------------------------------------------------------------
	   * 오더 등록
	   * ----------------------------------------------------------------------------*/
	  public int addOrder(Bb_OrderDto order) {
	    int count = sqlSession.insert(ns+"addOrder", order);
	    int seq = order.getSeq();
	    
	    System.out.println("가져온 seq:" +seq);
	    System.out.println("--------테스트 addOrder 결과값  : " + seq + "---------");
	    return seq;
	  }
		
		/*----------------------------------------------------------------------------
	   * 메뉴 등록
	   * ----------------------------------------------------------------------------*/
	  public int addMenu(Bb_MenuTableDto menu) {
	    int count = sqlSession.insert(ns+"addMenu", menu);
	    int seq = menu.getSeq();
	    
	    System.out.println("가져온 seq:" +seq);
	    System.out.println("--------테스트 addMenu 결과값  : " + seq + "---------");
	    return seq;
	  }
	  
	  /*----------------------------------------------------------------------------
	   * 오더 메뉴 등록
	   * ----------------------------------------------------------------------------*/
	  public void addOrderMenu(Bb_OrderMenuDto orderMenu) {
	    sqlSession.insert(ns+"addOrderMenu", orderMenu);
	  }




}
