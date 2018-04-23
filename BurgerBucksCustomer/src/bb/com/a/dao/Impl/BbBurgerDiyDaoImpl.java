package bb.com.a.dao.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbBurgerDiyDao;
import bb.com.a.model.BB_DiyBurgerDto;
import bb.com.a.model.Bb_BbsDto;


@Repository
public class BbBurgerDiyDaoImpl implements BbBurgerDiyDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String ns="BBBurgerDiy.";
	//
	/*--------------------------------------------------------------------------------------------
	 * 버거게시판리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_BbsDto> getBurgerDiyList(int seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+"getBurgerDiyList", seq);
	}
	/*--------------------------------------------------------------------------------------------
	 * 버거디테일 가져오기
	 *-------------------------------------------------------------------------------------------*/

	@Override
	public BB_DiyBurgerDto getBurgerDiyDetail(int seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns+"getBurgerDiyDetail", seq);
	}
	
	

}
