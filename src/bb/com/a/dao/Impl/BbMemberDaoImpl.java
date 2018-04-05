package bb.com.a.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbMemberDao;
import bb.com.a.model.Bb_MemberDto;

@Repository
public class BbMemberDaoImpl implements BbMemberDao {
	
	@Autowired
	SqlSession sqlSession;
	
	private String ns = "BBMember.";

	@Override
	public Bb_MemberDto allMember() throws Exception {
		Bb_MemberDto dto = sqlSession.selectOne(ns+"allMember");
		System.out.println("dto in member dao: " + dto);
		return dto;
	}
	@Override
	public boolean addMember(Bb_MemberDto mem) throws Exception {		
		int n = sqlSession.insert(ns + "addMember", mem);		
		return n>0?true:false;
	}
}
