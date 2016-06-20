package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.miracle.mode.Car;
import com.miracle.mode.CollegeCampCheckIn;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CollegePeopleVO;


public interface CollegeQTrsDAO extends BaseDAO<Car, Map<String, Object>> {
	
	
	/** College 大學生 營會 查詢是否報到過*/
	public int findIfCollegeCampCheckIn(String collegeId) throws DAOObjectNotFoundException;

	
	/** 
	 *  查詢所有報名人員資料By營會ID
	 */
	public List<CampActivitySignupVO> findCampActivitySignupAllByActivityId(String activityId) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查營會打卡報到人員
	 */
	public List<CollegePeopleVO> findCollegePeopleCheckInAllByDate(String campDate, String activityId) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查營會打卡未報到人員
	 */
	public List<CollegePeopleVO> findCollegePeopleNoCheckInAllByDate(String campDate, String activityId) throws DAOObjectNotFoundException;
	
	
	
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