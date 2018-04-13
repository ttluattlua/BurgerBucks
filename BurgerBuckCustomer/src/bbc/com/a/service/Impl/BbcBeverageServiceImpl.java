package bbc.com.a.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bbc.com.a.dao.BbcBeverageDao;
import bbc.com.a.model.Bb_BeverageDto;
import bbc.com.a.model.Bb_ImageDto;
import bbc.com.a.model.Bb_SideDto;
import bbc.com.a.service.BbcBeverageService;


@Service
public class BbcBeverageServiceImpl implements BbcBeverageService {
	
	@Autowired
	BbcBeverageDao bbaBeverageDao;

	@Override
	public Bb_BeverageDto registerBev(Bb_BeverageDto bbdto, Bb_ImageDto bidto) {
		int seq = bbaBeverageDao.registerBev(bbdto);
		bidto.setRef_Seq(seq);
		System.out.println(bidto.toString());
		int image_Seq = bbaBeverageDao.registerBevImage(bidto);
		System.out.println("registerSide_ image_Seq:"+image_Seq);
		bbdto.setSeq(seq);
		bbdto.setImage_Seq(image_Seq);
		
		return bbdto;
	}

	@Override
	public List<Bb_BeverageDto> getBevList() {
		List<Bb_BeverageDto> BevList = bbaBeverageDao.getBevList();
		List<Bb_ImageDto> imageList = bbaBeverageDao.getBevImageList(BevList);
		
		for (int i = 0; i < BevList.size(); i++) {
			BevList.get(i).setImage_Src(imageList.get(i).getImage_Src());
			BevList.get(i).setImage_Seq(imageList.get(i).getSeq());
		}
		
		return BevList;
	}

	@Override
	public Bb_BeverageDto getBevDetail(int seq) {
		// TODO Auto-generated method stub
		return bbaBeverageDao.getBevDetail(seq);
	}

	@Override
	public void updateBevAf(Bb_BeverageDto bbdto) {
		bbaBeverageDao.updateBevAf(bbdto);
		
	}

	@Override
	public void updateBevImageAf(Bb_ImageDto bidto) {
		bbaBeverageDao.updateBevImageAf(bidto);
		
	}

	@Override
	public void deleteBev(int seq, int image_Seq) {
		bbaBeverageDao.deleteBev(seq);
		bbaBeverageDao.deleteBevImage(image_Seq);
		
	}
}
