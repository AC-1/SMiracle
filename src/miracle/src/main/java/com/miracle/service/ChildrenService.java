package com.miracle.service;

import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.vo.PeopleVO;



public interface ChildrenService {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException;
	
}
