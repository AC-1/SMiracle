package com.miracle.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.CarQueryDAO;
import com.miracle.dao.CarTrsDAO;
import com.miracle.mode.Car;
import com.miracle.mode.vo.CarVO;
import com.miracle.service.CarService;



@Service
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarQueryDAO carQueryDAO;
	
	@Autowired
	private CarTrsDAO carTrsDAO;
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;

	@Override
	public Car queryCarById(String id) {
		
		return carQueryDAO.findById(id);
	}

	@Override
	public Car queryByIdName(String id, String name) {
		
		return carQueryDAO.findByIdName(id, name);
	}

	@Override
	public List<Car> queryCarAll(PageBounds pageBounds) {
		
		return carQueryDAO.findCarAll(pageBounds);
	}

	@Override
	public Car queryByCarMode(Car car) {
		
		return carQueryDAO.findByCarModel(car);
	}

	@Override
	public CarVO queryByCarVO(CarVO carVO) {
		
		return carQueryDAO.findByCarVO(carVO);
	}

	
	@Override
	public Boolean insertCar(Integer id, String name) {
		
		boolean isCorrect = false;
		
		int count = carTrsDAO.insertCar(id, name);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean insertCarByCar(Car car) {
		
		boolean isCorrect = false;
		
		int count = carTrsDAO.insertCarByCar(car);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean insertCarByCarVO(CarVO carVO) {
		
		boolean isCorrect = false;
		
		int count = carTrsDAO.insertCarByCarVO(carVO);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean updateCarByCarVO(CarVO carVO) {
		
		boolean isCorrect = false;
		
		int count = carTrsDAO.updateCarByCarVO(carVO);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean updateCarByIdName(String id, String name) {
		
		boolean isCorrect = false;
		
		int count = carTrsDAO.updateCarByIdName(id, name);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean deleteCarById(String id) {
		
		boolean isCorrect = false;
		
		int count = carTrsDAO.deleteCarById(id);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
//	@Transactional 
	public Boolean insertUpdateCar(String id, String name, String newName) {

		//此為手動配置方式
		def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = transactionManager.getTransaction(def);

		boolean isCorrect = false;
		try {
			// 新增車輛資料
			int count = carTrsDAO.insertCar(Integer.parseInt(id), name);

			// 修改車輛資料
			int count1 = carTrsDAO.updateCarByIdName(id, newName);

			if (count > 0) {
				isCorrect = true;
			}

			transactionManager.commit(status);
		} catch (Exception ex) {
			log.info(ex.toString());
			transactionManager.rollback(status);
		}
		
		return isCorrect;
	}

	@Override
	public void baseCar(Car car, String newName) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", car.getId());
		
		//新增
		carTrsDAO.insert(car);
		
		//修改
		car.setName(newName);
		carTrsDAO.update(car);
		
		//查詢
		List<Car> carList = (List<Car>)carQueryDAO.findAll();
		log.info(carList.get(0).getName());
		
		Car car2 = (Car)carQueryDAO.findByKey(map);
		log.info(car2.getName());
		
		//刪除
		carTrsDAO.deleteByKey(map);
	}


	
}
