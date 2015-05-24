package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.mode.Car;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;


public interface ChildrenQueryDAO extends BaseQueryDAO<Car, Map<String, Object>> {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO findPeopleData(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public List<Contact> findContact(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public CareTime findCareTime(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢崇拜活動*/
	public List<PresentWorshipVO> findPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException;
	
}