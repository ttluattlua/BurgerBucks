package bb.com.a.service.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbBeverageDao;
import bb.com.a.model.Bb_BeverageDto;
import bb.com.a.service.BbBeverageService;

@Service
public class BbSideServiceImpl implements BbBeverageService {

	@Autowired
	BbBeverageDao bbBeverageDao;

    
	/*----------------------------------------------------------------------------
   * 사이드 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_BeverageDto> getBeverageList() {
    return bbBeverageDao.getBeverageList();
  }
	
}
