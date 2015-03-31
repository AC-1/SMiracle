package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.CarQueryDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;
import com.miracle.mode.vo.CarVO;


@Repository("carQueryDAO")
public class CarQueryDAOImpl extends BaseQueryDAOImpl<Car, Map<String, Object>> implements CarQueryDAO {

	
	@Override
	public Car findById(String id) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findById", id);
	}
	
	@Override
	public Car findByIdName(String id, String name) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		return this.getSqlSession().selectOne(getNameSpace() + ".findByIdName", map);
	}

	@Override
	public List<Car> findCarAll(PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findCarAll",null , pageBounds);
	}

	@Override
	public Car findByCarModel(Car car) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findByCarModel", car);
	}

	@Override
	public CarVO findByCarVO(CarVO carVO) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findByCarVO", carVO);
	}

	

	
	
	

//	@Override
//	public void deleteByKey(String acSegment3, String acSegment4) {
//		super.deleteByKey(getKeys(acSegment3, acSegment4));
//	}
//
//	@Override
//	public Account findByKey(String acSegment3, String acSegment4)
//			throws DAOObjectNotFoundException {
//		return super.findByKey(getKeys(acSegment3, acSegment4));
//	}
//
//	//for findByKey, deleteByKey
//	private Map<String, Object> getKeys(String acSegment3, String acSegment4) {
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("acSegment3", acSegment3);
//		map.put("acSegment4", acSegment4);
//		return map;
//	}
//	
//	@Override
//	public List<Account> findAllByAcSegment3(String acSegment3)
//			throws DAOObjectNotFoundException {
//		return this.getSqlSession().selectList(getNameSpace() + ".findAllByAcSegment3", acSegment3);
//	}
}