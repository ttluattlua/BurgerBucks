package bb.com.a.service;

import java.util.List;

import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.model.Bb_ImageDto;

public interface BbBeverageService {

	/*--------------------------------------------------------------------------------------------
	 * 음료 새로 등록 (이미지와함께) 
	 *-------------------------------------------------------------------------------------------*/
	public Bb_BeverageDto registerBev(Bb_BeverageDto bbdto, Bb_ImageDto bidto);
	/*--------------------------------------------------------------------------------------------
	 * 음료 리스트 불러오기(이미지와함께) 
	 *-------------------------------------------------------------------------------------------*/
	public List<Bb_BeverageDto> getBevList();
	/*--------------------------------------------------------------------------------------------
	 * 음료 수정을 위한 디테일 불러오기
	 *-------------------------------------------------------------------------------------------*/	
	public Bb_BeverageDto getBevDetail(int seq);
	
	/*--------------------------------------------------------------------------------------------
	 * 음료 테이블 수정
	 *-------------------------------------------------------------------------------------------*/	
	public void updateBevAf(Bb_BeverageDto bbdto);
	/*--------------------------------------------------------------------------------------------
	 * 음료 이미지 수정
	 *-------------------------------------------------------------------------------------------*/	
	public void updateBevImageAf(Bb_ImageDto bidto);
	
	/*--------------------------------------------------------------------------------------------
	 * 음료랑 이미지 삭제하기
	 *-------------------------------------------------------------------------------------------*/
	
	public void deleteBev(int seq, int image_Seq);
}
