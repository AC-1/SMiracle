package com.miracle.dao;

import java.util.Map;

import com.miracle.mode.Car;
import com.miracle.mode.CollegeCampCheckIn;


public interface CollegeTrsDAO extends BaseTrsDAO<Car, Map<String, Object>> {
	
	/** 
	 *  College 大學生 營會 當天今天報到打卡
	 *  collegeId:學生ID 
	 */
	public int createCollegeCampCheckIn(CollegeCampCheckIn collegeCampCheckIn) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  重覆報到打卡寫進DB
	 *  College 大學生 營會 當天今天報到重覆打卡
	 *  collegeId:學生ID 
	 */
	public int updateCollegeCampCheckIn(String collegeId) throws DAOObjectNotFoundException;
	
}