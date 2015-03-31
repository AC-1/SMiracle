package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.miracle.mode.Car;
import com.miracle.mode.Contact;
import com.miracle.mode.vo.PeopleVO;


public interface ChildrenQueryDAO extends BaseQueryDAO<Car, Map<String, Object>> {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO findPeopleData(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public List<Contact> findContact(String peopleId) throws DAOObjectNotFoundException;
	
	
}