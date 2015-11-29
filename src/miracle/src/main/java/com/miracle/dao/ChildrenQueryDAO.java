package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.mode.Car;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.PresentWorship;
import com.miracle.mode.Statement;
import com.miracle.mode.Worship;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.mode.vo.WorshipVO;


public interface ChildrenQueryDAO extends BaseQueryDAO<Car, Map<String, Object>> {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO findPeopleData(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public List<Contact> findContact(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public CareTime findCareTime(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢崇拜活動*/
	public List<PresentWorshipVO> findPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢成長記錄*/
	public List<Statement> findStatementAll(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢崇拜報到-查詢*/
	public String findPresentWorshipByKey(PresentWorship presentWorship) throws DAOObjectNotFoundException;
	
	/** 打卡查詢那一堂*/
	public String findWorshipIdByKey(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢所有崇拜聚會
	 *  依時間或worshId查詢 
	 */
	public List<PresentWorshipVO> findPresentWorshipAll(String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException;
}