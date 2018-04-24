package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbBurgerDiyDao;
import bb.com.a.model.BB_DiyBurgerDto;
import bb.com.a.model.Bb_BbsDto;
import bb.com.a.model.Bb_LikeDto;
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
	/*--------------------------------------------------------------------------------------------
	 * 버거게시판리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	@Override
	public List<Bb_BbsDto> diySearch(Bb_BbsDto bsdto) {
		// TODO Auto-generated method stub
		return bbBurgerDiyDao.diySearch(bsdto);
	}
	
	
	  /*----------------------------------------------------------------------------
	   * 버거 라이크 추가 
	   * ----------------------------------------------------------------------------*/ 

		@Override
		public void likeClick(Bb_LikeDto ldto) throws Exception {
			bbBurgerDiyDao.likeClick(ldto);
		}
	  /*----------------------------------------------------------------------------
	   * 버거 라이크 삭제 
	   * ----------------------------------------------------------------------------*/ 

		@Override
		public void unlikeClick(Bb_LikeDto ldto) throws Exception {
			bbBurgerDiyDao.unlikeClick(ldto);
		}

	  /*----------------------------------------------------------------------------
	   * bbs 라이크 1 증가 
	   * ----------------------------------------------------------------------------*/ 
		
		@Override
		public void bbsLikeAdd(Bb_LikeDto ldto) throws Exception {
			// TODO Auto-generated method stub
			bbBurgerDiyDao.bbsLikeAdd(ldto);
		}
	  /*----------------------------------------------------------------------------
	   * bbs 라이크 1 감소  
	   * ----------------------------------------------------------------------------*/ 
		
		@Override
		public void bbsLikeDelete(Bb_LikeDto ldto) throws Exception {
			// TODO Auto-generated method stub
			bbBurgerDiyDao.bbsLikeDelete(ldto);
		}

}
