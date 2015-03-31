package com.miracle.service;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.mode.Car;
import com.miracle.mode.vo.CarVO;


public interface CarService {
	
	final Log log = LogFactory.getLog(CarService.class);
	
	public Car queryCarById(String id);
	
	public Car queryByIdName(String id, String name);
	
	public List<Car> queryCarAll(PageBounds pageBounds);
	
	public Car queryByCarMode(Car car);
	
	public CarVO queryByCarVO(CarVO carVO);
	
	
	/** 新增車輛，以ID和Name來新增*/
	public Boolean insertCar(Integer id, String name);
	
	/** 新增車輛，以Car Model來新增*/
	public Boolean insertCarByCar(Car car);
	
	/** 新增車輛，以Car VO來新增*/
	public Boolean insertCarByCarVO(CarVO carVO);
	
	/** 修改車輛，以Car VO來修改*/
	public Boolean updateCarByCarVO(CarVO carVO);
	
	/** 修改車輛，以Car ID,NAME來修改*/
	public Boolean updateCarByIdName(String id, String name);
	
	/** 刪除車輛*/
	public Boolean deleteCarById(String id);
	
	/** 先新增，然後修改車輛資料*/
	public Boolean insertUpdateCar(String id, String name, String newName);
	
	/** 基本新增修改刪除Base用法*/
	public void baseCar(Car car, String newName);
	
	
}
