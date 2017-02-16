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
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.CarQTrsDAO;
import com.miracle.mode.jpa.CarJpa;
import com.miracle.mode.vo.CarVO;
import com.miracle.service.CarService;



@Service
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarQTrsDAO carQTrsDAO;
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;

	@Override
	public CarJpa queryCarById(String id) {
		
		return carQTrsDAO.findById(id);
	}

	@Override
	public CarJpa queryByIdName(String id, String name) {
		
		return carQTrsDAO.findByIdName(id, name);
	}

	@Override
	public List<CarJpa> queryCarAll(PageBounds pageBounds) {
		
		return carQTrsDAO.findCarAll(pageBounds);
	}

	@Override
	public CarJpa queryByCarMode(CarJpa car) {
		
		return carQTrsDAO.findByCarModel(car);
	}

	@Override
	public CarVO queryByCarVO(CarVO carVO) {
		
		return carQTrsDAO.findByCarVO(carVO);
	}

	
	@Override
	public Boolean insertCar(Integer id, String name) {
		
		boolean isCorrect = false;
		
		int count = carQTrsDAO.insertCar(id, name);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean insertCarByCar(CarJpa car) {
		
		boolean isCorrect = false;
		
		int count = carQTrsDAO.insertCarByCar(car);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean insertCarByCarVO(CarVO carVO) {
		
		boolean isCorrect = false;
		
		int count = carQTrsDAO.insertCarByCarVO(carVO);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean updateCarByCarVO(CarVO carVO) {
		
		boolean isCorrect = false;
		
		int count = carQTrsDAO.updateCarByCarVO(carVO);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean updateCarByIdName(String id, String name) {
		
		boolean isCorrect = false;
		
		int count = carQTrsDAO.updateCarByIdName(id, name);
		
		if(count >0){
			isCorrect = true;
		}
		return isCorrect;
	}

	@Override
	public Boolean deleteCarById(String id) {
		
		boolean isCorrect = false;
		
		int count = carQTrsDAO.deleteCarById(id);
		
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
			int count = carQTrsDAO.insertCar(Integer.parseInt(id), name);

			// 修改車輛資料
			int count1 = carQTrsDAO.updateCarByIdName(id, newName);

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
	public void baseCar(CarJpa car, String newName) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", car.getId());
		
		//新增
		carQTrsDAO.insert(car);
		
		//修改
		car.setName(newName);
		carQTrsDAO.update(car);
		
		//查詢
		List<CarJpa> carList = (List<CarJpa>)carQTrsDAO.findAll();
		log.info(carList.get(0).getName());
		
		CarJpa car2 = (CarJpa)carQTrsDAO.findByKey(map);
		log.info(car2.getName());
		
		//刪除
		carQTrsDAO.deleteByKey(map);
	}


	
}
