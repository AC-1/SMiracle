package com.miracle.service;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;



public interface ChildrenService {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException;

	/** 查詢䏈絡資料*/
	public List<Contact> queryContact(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public CareTime queryCareTime(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢崇拜活動*/
	public List<PresentWorshipVO> queryPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException;
}
