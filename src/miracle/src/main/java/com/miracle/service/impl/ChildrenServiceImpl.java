package com.miracle.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.ChildrenQueryDAO;
import com.miracle.dao.ChildrenTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.jpa.ChildrenDAO;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.PresentWorship;
import com.miracle.mode.Statement;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.service.ChildrenService;



@Service
public class ChildrenServiceImpl implements ChildrenService {
	
	@Autowired
	private ChildrenQueryDAO childrenQueryDAO;
	
	@Autowired
	private ChildrenTrsDAO childrenTrsDAO;
	
	@Autowired
	private ChildrenDAO childrenDAO;
	
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;
	
	@Override
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findPeopleData(peopleId);
	}

	@Override
	public List<Contact> queryContact(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findContact(peopleId);
	}

	@Override
	public CareTime queryCareTime(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findCareTime(peopleId);
	}
	
	@Override
	public List<PresentWorshipVO> queryPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findPresentWorship(peopleId, pageBounds);
	}
	
	@Override
	public List<Statement> queryStatementAll(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findStatementAll(peopleId, pageBounds);
	}
	
	@Override
	public String queryPresentWorshipByKey(PresentWorship presentWorship) throws DAOObjectNotFoundException {

		
		return childrenQueryDAO.findPresentWorshipByKey(presentWorship);
	}
	
	@Override
	public PresentWorship createPresentWorship(PresentWorship presentWorship) throws DAOObjectNotFoundException {
		
		
		return childrenDAO.save(presentWorship);
	}
	
	@Override
	public Boolean updatePresentWorshipById(String id) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		int count = childrenTrsDAO.updatePresentWorshipById(id);
		
		if(count >0){
			isCorrect = true;
		}
		
		return isCorrect;
	}
}
