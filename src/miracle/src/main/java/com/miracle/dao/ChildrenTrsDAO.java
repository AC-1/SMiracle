package com.miracle.dao;

import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import com.miracle.mode.Car;


public interface ChildrenTrsDAO extends BaseTrsDAO<Car, Map<String, Object>> {
	
	/** 更新重覆報到*/
	public Integer updatePresentWorshipById(String id) throws DAOObjectNotFoundException;
	
}