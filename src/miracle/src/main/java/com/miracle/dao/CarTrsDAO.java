package com.miracle.dao;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import com.miracle.mode.Car;
import com.miracle.mode.vo.CarVO;

@Transactional
public interface CarTrsDAO extends BaseTrsDAO<Car, Map<String, Object>> {
	
	/** 新增車輛，以ID和Name來新增*/
	public int insertCar(Integer id, String name);
	
	/** 新增車輛，以Car Model來新增*/
	public int insertCarByCar(Car car);
	
	/** 新增車輛，以Car VO來新增*/
	public int insertCarByCarVO(CarVO carVO);
	
	/** 修改車輛，以Car VO來修改*/
	public int updateCarByCarVO(CarVO carVO);
	
	/** 修改車輛，以Car ID,Name來修改*/
	public int updateCarByIdName(String id, String name);
	
	/** 刪除車輛*/
	public int deleteCarById(String id);
	
}