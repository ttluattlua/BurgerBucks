package bb.com.a.service.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.com.a.dao.BbBurgerDao;
import bb.com.a.dao.BbSideDao;
import bb.com.a.model.Bb_BurgerDto;
import bb.com.a.model.Bb_IngredientDto;
import bb.com.a.model.Bb_SideDto;
import bb.com.a.service.BbBurgerService;
import bb.com.a.service.BbSideService;

@Service
public class BbBeverageServiceImpl implements BbSideService {

	@Autowired
	BbSideDao bbSideDao;

    
	/*----------------------------------------------------------------------------
   * 사이드 리스트 불러오기
   * ----------------------------------------------------------------------------*/
  @Override
  public List<Bb_SideDto> getSideList() {
    return bbSideDao.getSideList();
  }
	
}
