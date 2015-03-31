package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.CarTrsDAO;
import com.miracle.mode.Car;
import com.miracle.mode.vo.CarVO;


@Repository("carTrsDAO")
public class CarTrsDAOImpl extends BaseTrsDAOImpl<Car, Map<String, Object>> implements CarTrsDAO {


	@Override
	public int insertCar(Integer id, String name) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		return this.getSqlSession().insert(getNameSpace() + ".insertCar", map);
	}

	@Override
	public int insertCarByCar(Car car) {
		
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