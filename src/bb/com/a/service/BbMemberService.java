package bb.com.a.service;

import org.springframework.stereotype.Service;

import bb.com.a.model.Bb_MemberDto;

@Service
public interface BbMemberService {
	public Bb_MemberDto allMember() throws Exception;
	public boolean addMember(Bb_MemberDto mem) throws Exception;
}
