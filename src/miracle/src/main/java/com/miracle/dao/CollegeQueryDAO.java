package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.miracle.mode.Car;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CollegePeopleVO;


public interface CollegeQueryDAO extends BaseQueryDAO<Car, Map<String, Object>> {
	
	
	/** College 大學生 營會 查詢是否報到過*/
	public int findIfCollegeCampCheckIn(String collegeId) throws DAOObjectNotFoundException;

	
	/** 
	 *  查詢所有報名人員資料By營會ID
	 */
	public List<CampActivitySignupVO> findCampActivitySignupAllByActivityId(String activityId) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查營會打卡報到人員
	 */
	public List<CollegePeopleVO> findCollegePeopleCheckInAllByDate(String campDate) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查營會打卡未報到人員
	 */
	public List<CollegePeopleVO> findCollegePeopleNoCheckInAllByDate(String campDate) throws DAOObjectNotFoundException;
	
}