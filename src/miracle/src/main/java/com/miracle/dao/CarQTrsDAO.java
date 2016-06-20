package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.mode.Car;
import com.miracle.mode.vo.CarVO;


public interface CarQTrsDAO extends BaseDAO<Car, Map<String, Object>> {
	
	
	/** 查詢車子以ID方式詢找*/
	public Car findById(String id) throws DAOObjectNotFoundException;
	
	/** 查詢車子以ID和NAME方式尋找*/
	public Car findByIdName(String id, String name) throws DAOObjectNotFoundException;
	
	/** 查詢所有車子*/
	public List<Car> findCarAll(PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢車子以car Model方式詢找*/
	public Car findByCarModel(Car car) throws DAOObjectNotFoundException;
	
	/** 查詢車子以VO方式詢找*/
	public CarVO findByCarVO(CarVO carVO) throws DAOObjectNotFoundException;
	
	
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