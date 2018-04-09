package bb.com.a.service;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;

public interface BbMemberService {
	
	public Bb_MemberDto login(Bb_MemberDto bmdto);
	
	public Bb_AddrDto getMostCurrentAddress(Bb_MemberDto bmdto);
	
	public boolean addmember(Bb_MemberDto mem) throws Exception;
	
	public int getID(Bb_MemberDto mem);

}
