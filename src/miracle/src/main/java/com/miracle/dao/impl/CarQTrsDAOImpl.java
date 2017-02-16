package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.CarQTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.jpa.CarJpa;
import com.miracle.mode.vo.CarVO;


@Repository("carQTrsDAO")
public class CarQTrsDAOImpl extends BaseDAOImpl<CarJpa, Map<String, Object>> implements CarQTrsDAO {

	
	@Override
	public CarJpa findById(String id) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findById", id);
	}
	
	@Override
	public CarJpa findByIdName(String id, String name) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		return this.getSqlSession().selectOne(getNameSpace() + ".findByIdName", map);
	}

	@Override
	public List<CarJpa> findCarAll(PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findCarAll",null , pageBounds);
	}

	@Override
	public CarJpa findByCarModel(CarJpa car) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findByCarModel", car);
	}

	@Override
	public CarVO findByCarVO(CarVO carVO) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findByCarVO", carVO);
	}

	
	@Override
	public int insertCar(Integer id, String name) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		return this.getSqlSession().insert(getNameSpace() + ".insertCar", map);
	}

	@Override
	public int insertCarByCar(CarJpa car) {
		
		return this.getSqlSession().insert(getNameSpace() + ".insertCarByCar", car);
	}

	@Override
	public int insertCarByCarVO(CarVO carVO) {
		
		
		return this.getSqlSession().insert(getNameSpace() + ".insertCarByCarVO", carVO);
	}

	@Override
	public int updateCarByCarVO(CarVO carVO) {
		
		return this.getSqlSession().insert(getNameSpace() + ".updateCarByCarVO", carVO);
	}

	@Override
	public int updateCarByIdName(String id, String name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		return this.getSqlSession().insert(getNameSpace() + ".updateCarByIdName", map);
	}

	@Override
	public int deleteCarById(String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		return this.getSqlSession().insert(getNameSpace() + ".deleteCarById", map);
	}
	
	

//	@Override
//	public void deleteByKey(String id) {
//		super.deleteByKey(getKeys(acSegment3));
//	}
////
////	@Override
////	public Account findByKey(String acSegment3, String acSegment4)
////			throws DAOObjectNotFoundException {
////		return super.findByKey(getKeys(acSegment3, acSegment4));
////	}
////
//	//for findByKey, deleteByKey
//	private Map<String, Object> getKeys(String acSegment) {
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