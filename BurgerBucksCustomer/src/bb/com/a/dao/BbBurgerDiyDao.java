package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.BB_DiyBurgerDto;
import bb.com.a.model.Bb_BbsDto;



public interface BbBurgerDiyDao {

	/*--------------------------------------------------------------------------------------------
	 * 버거게시판리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	public List<Bb_BbsDto> getBurgerDiyList(int seq);
	
	
	//
	/*--------------------------------------------------------------------------------------------
	 * 버거디테일 가져오기
	 *-------------------------------------------------------------------------------------------*/
	public BB_DiyBurgerDto getBurgerDiyDetail(int seq);
}
