package com.miracle.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.ChildrenTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;


@Repository("childrenTrsDAO")
public class ChildrenTrsDAOImpl extends BaseTrsDAOImpl<Car, Map<String, Object>> implements ChildrenTrsDAO {


	@Override
	public Integer updatePresentWorshipById(String id) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().update(getNameSpace() + ".updatePresentWorshipById", id);
	}
}