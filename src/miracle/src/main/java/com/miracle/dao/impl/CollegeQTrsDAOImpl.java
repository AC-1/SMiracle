package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.CollegeQTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;
import com.miracle.mode.CollegeCampCheckIn;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CollegePeopleVO;


@Repository("collegeQTrsDAO")
public class CollegeQTrsDAOImpl extends BaseDAOImpl<Car, Map<String, Object>> implements CollegeQTrsDAO {

	
	@Override
	public int findIfCollegeCampCheckIn(String collegeId, String checkTypeTime) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("collegeId", collegeId);
		map.put("checkTypeTime", checkTypeTime);
		return this.getSqlSession().selectOne(getNameSpace() + ".findIfCollegeCampCheckIn", map);
	}
	
	
	@Override
	public List<CampActivitySignupVO> findCampActivitySignupAllByActivityId(String activityId) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectList(getNameSpace() + ".findCampActivitySignupAllByActivityId", activityId);
	}
	
	
	@Override
	public List<CollegePeopleVO> findCollegePeopleCheckInAllByDate(String campDate, String activityId, String checkTypeTime) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("campDate", campDate);
		map.put("activityId", activityId);
		map.put("checkTypeTime", checkTypeTime);
		return this.getSqlSession().selectList(getNameSpace() + ".findCollegePeopleCheckInAllByDate", map);
	}
	
	
	@Override
	public List<CollegePeopleVO> findCollegePeopleNoCheckInAllByDate(String campDate, String activityId) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("campDate", campDate);
		map.put("activityId", activityId);
		return this.getSqlSession().selectList(getNameSpace() + ".findCollegePeopleNoCheckInAllByDate", map);
	}
	
	
	@Override
	public int createCollegeCampCheckIn(CollegeCampCheckIn collegeCampCheckIn) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().insert(getNameSpace() + ".createCollegeCampCheckIn", collegeCampCheckIn);
	}
	
	
	@Override
	public int updateCollegeCampCheckIn(String collegeId, String checkTypeTime, String checkInfo) throws DAOObjectNotFoundException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("collegeId", collegeId);
		map.put("checkTypeTime", checkTypeTime);
		map.put("checkInfo", checkInfo);
		return this.getSqlSession().insert(getNameSpace() + ".updateCollegeCampCheckIn", map);
	}
	
}