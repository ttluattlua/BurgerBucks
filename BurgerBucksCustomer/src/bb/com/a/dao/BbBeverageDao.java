package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_ImageDto;

public interface BbBeverageDao {
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 새로 등록 
	 *-------------------------------------------------------------------------------------------*/
	public int registerBev(Bb_BeverageDto bbdto);
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 새로 이미지 등록 
	 *-------------------------------------------------------------------------------------------*/
	
	public int registerBevImage(Bb_ImageDto bidto);
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 리스트 가져오기 
	 *-------------------------------------------------------------------------------------------*/
	
	public List<Bb_BeverageDto> getBevList();
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 이미지 리스트 가져오기
	 *-------------------------------------------------------------------------------------------*/
	public List<Bb_ImageDto> getBevImageList(List<Bb_BeverageDto> bslist);
	

	/*--------------------------------------------------------------------------------------------
	 * 음료 수정을 위한 디테일 가져오기 
	 *-------------------------------------------------------------------------------------------*/
	
	public Bb_BeverageDto getBevDetail(int seq);
	
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 수정하기
	 *-------------------------------------------------------------------------------------------*/
	
	public void updateBevAf(Bb_BeverageDto bbdto);

	
	/*--------------------------------------------------------------------------------------------
	 * 음료 이미지 수정하기
	 *-------------------------------------------------------------------------------------------*/
	
	public void updateBevImageAf(Bb_ImageDto bidto);
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 삭제하기
	 *-------------------------------------------------------------------------------------------*/
	
	public void deleteBev(int seq);
	
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 이미지 삭제하기
	 *-------------------------------------------------------------------------------------------*/
	
	public void deleteBevImage(int image_Seq);

}