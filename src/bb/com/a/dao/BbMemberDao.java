package bb.com.a.dao;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;

public interface BbMemberDao {
	
	/*----------------------------------------------------------------------------
	 * 로그인
	 * ----------------------------------------------------------------------------*/
	public Bb_MemberDto login(Bb_MemberDto bmdto);
	
	/*----------------------------------------------------------------------------
	 * 로그인 한 사람 최신주소가져오기 
	 * ----------------------------------------------------------------------------*/
	public Bb_AddrDto getMostCurrentAddress(Bb_MemberDto bmdto);
	
	

	boolean addmember(Bb_MemberDto mem)throws Exception;	
	
	int getID(Bb_MemberDto mem);

}
