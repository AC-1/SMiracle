package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.ChildrenQTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.Statement;
import com.miracle.mode.jpa.CarJpa;
import com.miracle.mode.jpa.PresentWorship;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.mode.vo.WorshipReportVO;


@Repository("childrenQTrsDAO")
public class ChildrenQTrsDAOImpl extends BaseDAOImpl<CarJpa, Map<String, Object>> implements ChildrenQTrsDAO {

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
	
	@Override
	public List<Statement> findStatementAll(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findStatementAll", peopleId, pageBounds);
	}
	
	@Override
	public String findPresentWorshipByKey(PresentWorship presentWorship) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findPresentWorshipByKey", presentWorship);
	}
	
	
	@Override
	public String findWorshipIdByKey(String peopleId) throws DAOObjectNotFoundException {

		return this.getSqlSession().selectOne(getNameSpace() + ".findWorshipIdByKey", peopleId);
	}
	
	
	@Override
	public List<PresentWorshipVO> findPresentWorshipAll(String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginTime", beginTime);
		map.put("endTime", endTime);
		map.put("worshId", worshId);
		return this.getSqlSession().selectList(getNameSpace() + ".findPresentWorshipAll", map);
	}
	
	@Override
	public List<WorshipReportVO> findWorshipReportAll(String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginTime", beginTime);
		map.put("endTime", endTime);
		map.put("worshId", worshId);
		return this.getSqlSession().selectList(getNameSpace() + ".findWorshipReportAll", map);
	}
	
	
	
	@Override
	public Integer updatePresentWorshipById(String id) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().update(getNameSpace() + ".updatePresentWorshipById", id);
	}
	
	@Override
	public Integer updatePresentWorshipChkoutById(String pid, String cid, String worship) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pid", pid);
		map.put("cid", cid);
		map.put("worship", worship);
		return this.getSqlSession().update(getNameSpace() + ".updatePresentWorshipChkoutById", map);
	}
	
	@Override
	public List<PresentWorshipVO> findPresentWorshipAllPage(PageBounds pageBounds, String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginTime", beginTime);
		map.put("endTime", endTime);
		map.put("worshId", worshId);
		return this.getSqlSession().selectList(getNameSpace() + ".findPresentWorshipAllPage", map, pageBounds);
	}
	
	@Override
	public List<PeopleVO> findAllPeople(PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findAllPeople", null, pageBounds);
	}
	
	@Override
	public List<PeopleVO> findAllPeopleByName(PageBounds pageBounds, String name) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findAllPeopleByName", name, pageBounds);
	}
	
}