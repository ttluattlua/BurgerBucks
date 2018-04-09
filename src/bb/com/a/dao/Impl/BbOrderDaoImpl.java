package bb.com.a.dao.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.com.a.dao.BbOrderDao;


@Repository
public class BbOrderDaoImpl implements BbOrderDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String ns="BBOrder.";
}
