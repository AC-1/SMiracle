package com.miracle.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.ChildrenQueryDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;
import com.miracle.mode.Contact;
import com.miracle.mode.vo.PeopleVO;


@Repository("childrenQueryDAO")
public class ChildrenQueryDAOImpl extends BaseQueryDAOImpl<Car, Map<String, Object>> implements ChildrenQueryDAO {

	@Override
	public PeopleVO findPeopleData(String peopleId) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findPeopleData", peopleId);
	}

	@Override
	public List<Contact> findContact(String peopleId) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findContact", peopleId);
	}

	
}