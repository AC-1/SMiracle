package com.order.dao;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.order.mode.Car;
import com.order.mode.vo.CarVO;


public interface CarQueryDAO extends BaseQueryDAO<Car, Map<String, Object>> {
	
	
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
	
}