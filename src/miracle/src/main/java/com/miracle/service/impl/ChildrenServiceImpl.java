package com.miracle.service.impl;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.miracle.dao.ChildrenQueryDAO;
import com.miracle.dao.ChildrenTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.service.ChildrenService;



@Service
public class ChildrenServiceImpl implements ChildrenService {
	
	@Autowired
	private ChildrenQueryDAO childrenQueryDAO;
	
	@Autowired
	private ChildrenTrsDAO childrenTrsDAO;
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;
	
	@Override
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findPeopleData(peopleId);
	}
	
}
