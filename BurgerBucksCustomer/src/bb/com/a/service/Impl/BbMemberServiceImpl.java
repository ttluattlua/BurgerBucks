package bb.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;
import bb.com.a.model.Bb_MenuTableDto;
import bb.com.a.model.Bb_OrderDto;
import bb.com.a.model.Bb_OrderMenuDto;
import bb.com.a.service.BbMemberService;

@Service
public class BbMemberServiceImpl implements BbMemberService {
	@Autowired
	BbMemberDao bbMemberDao;

	/*----------------------------------------------------------------------------
	 * 로그인
	 * ----------------------------------------------------------------------------*/
	@Override
	public Bb_MemberDto login(Bb_MemberDto bmdto) {
		return bbMemberDao.login(bmdto);
	}

	/*----------------------------------------------------------------------------
	 * 로그인 한 사람 최신주소가져오기 
	 * ----------------------------------------------------------------------------*/
	@Override
	public Bb_AddrDto getMostCurrentAddress(Bb_MemberDto bmdto) {
		// TODO Auto-generated method stub
		return bbMemberDao.getMostCurrentAddress(bmdto);
	}
	
	/*----------------------------------------------------------------------------
	 * 비밀번호 변경 
	 * ----------------------------------------------------------------------------*/
	@Override
	public void updatePwd(Bb_MemberDto mem) {
		bbMemberDao.updatePwd(mem);
		
	}
	
	/*----------------------------------------------------------------------------
	 * 회원정보 수정
	 * ----------------------------------------------------------------------------*/
	@Override
	public void updateProfile(Bb_MemberDto bmdto) {
		bbMemberDao.updateProfile(bmdto);
		
	}
	
	/*----------------------------------------------------------------------------
	 * 회원정보 탈퇴
	 * ----------------------------------------------------------------------------*/
	@Override
	public void deleteMember(int seq) {
		bbMemberDao.deleteMember(seq);
	}


	/*----------------------------------------------------------------------------
	 * 회원가입
	 * ----------------------------------------------------------------------------*/
	@Override
	public int addmember(Bb_MemberDto mem) throws Exception {
		return bbMemberDao.addmember(mem);
	}
	
	/*----------------------------------------------------------------------------
	 * 중복확인
	 * ----------------------------------------------------------------------------*/
	@Override
	public int getID(Bb_MemberDto mem) {
		return bbMemberDao.getID(mem);
	}
	/*----------------------------------------------------------------------------
	 *비밀번호변경
	 * ----------------------------------------------------------------------------*/
	@Override
	public void changePwd(Bb_MemberDto mem) {
		bbMemberDao.changePwd(mem);
		
	}
	/*----------------------------------------------------------------------------
	 * 가입 후 장바구니 만들기
	 * ----------------------------------------------------------------------------*/
	@Override
	public int makeOrderBasket(Bb_MemberDto mem) {
		return bbMemberDao.makeOrderBasket(mem);
	}
	
	/*----------------------------------------------------------------------------
	   * 장바구니 불러오기
	   * ----------------------------------------------------------------------------*/
	  @Override
	  public Bb_OrderDto getOrderBasket(Bb_MemberDto mem) {
	    return bbMemberDao.getOrderBasket(mem);
	  }

	/*----------------------------------------------------------------------------
	   * 오더 등록
	   * ----------------------------------------------------------------------------*/
	  public int addOrder(Bb_OrderDto order) {
	    return bbMemberDao.addOrder(order);
	  }
	  
	  /*----------------------------------------------------------------------------
	   * 메뉴 등록
	   * ----------------------------------------------------------------------------*/
	  public int addMenu(Bb_MenuTableDto menu) {
	    return bbMemberDao.addMenu(menu);
	  }
	  
	  /*----------------------------------------------------------------------------
	   * 오더 메뉴 등록
	   * ----------------------------------------------------------------------------*/
	  public void addOrderMenu(Bb_OrderMenuDto orderMenu) {
	    bbMemberDao.addOrderMenu(orderMenu);
	  }


	
}
