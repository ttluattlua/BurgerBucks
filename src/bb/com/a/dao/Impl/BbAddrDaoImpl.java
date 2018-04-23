package bb.com.a.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import bb.com.a.dao.BbAddrDao;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;;

@Repository
public class BbAddrDaoImpl implements BbAddrDao{
	
	@Autowired
	SqlSession sqlSession;
	
	private String ns = "BBAddress.";
	
	@Override
	public List<Bb_AddrDto> allAddress( Bb_MemberDto login) throws Exception {
		List<Bb_AddrDto> AddrList = sqlSession.selectList(ns+"allAddress", login);
		System.out.println("login정보: " + login.toString());
		for (int i = 0; i < AddrList.size(); i++) {
			System.out.println(AddrList.get(i).getAddress());
		}
		return AddrList;
	}

	@Override
	public boolean addrAdd(Model model, Bb_AddrDto addr) throws Exception {
		model.addAttribute("addr",addr);
		int n = sqlSession.insert(ns + "addrAdd", addr);		
		return n>0?true:false;
	}

	@Override
	public boolean addrUpdate(Model model, Bb_AddrDto addr) throws Exception {
		int n = sqlSession.update(ns+"addrUpdate", addr);
		return n>0?true:false;
	}

	@Override
	public boolean addrDelete(Model model, Bb_AddrDto addr) throws Exception {
		int n = sqlSession.update(ns+"addrDelete", addr);

		return n>0?true:false;
	}
}
