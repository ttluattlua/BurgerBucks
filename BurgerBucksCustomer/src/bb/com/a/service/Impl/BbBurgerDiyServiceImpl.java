package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbBurgerDiyDao;
import bb.com.a.model.BB_DiyBurgerDto;
import bb.com.a.model.Bb_BbsDto;
import bb.com.a.service.BbBurgerDiyService;

@Service
public class BbBurgerDiyServiceImpl implements BbBurgerDiyService {

	@Autowired
	BbBurgerDiyDao bbBurgerDiyDao;
	
	
	/*--------------------------------------------------------------------------------------------
	 * 버거게시판리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_BbsDto> getBurgerDiyList(int seq) {
		// TODO Auto-generated method stub
		return bbBurgerDiyDao.getBurgerDiyList(seq);
	}

	/*--------------------------------------------------------------------------------------------
	 * 버거디테일 가져오기
	 *-------------------------------------------------------------------------------------------*/

	@Override
	public BB_DiyBurgerDto getBurgerDiyDetail(int seq) {

		return bbBurgerDiyDao.getBurgerDiyDetail(seq);
	}
	/*--------------------------------------------------------------------------------------------
	 * 마이버거리스트가져오기
	 *-------------------------------------------------------------------------------------------*/

	@Override
	public List<BB_DiyBurgerDto> myDiyBurgerList(int seq) {
		// TODO Auto-generated method stub
		return bbBurgerDiyDao.myDiyBurgerList(seq);
	}
  /*----------------------------------------------------------------------------
   * 내버거게시판에등록
   * ----------------------------------------------------------------------------*/ 

	@Override
	public void regiDiyBurger(Bb_BbsDto bsdto) {
		bbBurgerDiyDao.regiDiyBurger(bsdto);
		
	}

}
