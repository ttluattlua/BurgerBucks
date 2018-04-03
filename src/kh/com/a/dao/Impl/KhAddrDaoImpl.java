package kh.com.a.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import kh.com.a.dao.KhAddrDao;
import kh.com.a.model.Bb_AddrDto;;

@Repository
public class KhAddrDaoImpl implements KhAddrDao{
	
	@Autowired
	SqlSession sqlSession;
	
	private String ns = "KHAddress.";
	
	@Override
	public Bb_AddrDto allAddress() {
		Bb_AddrDto dto = sqlSession.selectOne(ns+"allAddress");
		System.out.println("dto in dao: " + dto);
		return dto;
	}
}
