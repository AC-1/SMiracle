package com.miracle.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.ChildrenQueryDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;


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

	@Override
	public CareTime findCareTime(String peopleId) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findCareTime", peopleId);
	}

	@Override
	public List<PresentWorshipVO> findPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findPresentWorship", peopleId, pageBounds);
	}

	
}