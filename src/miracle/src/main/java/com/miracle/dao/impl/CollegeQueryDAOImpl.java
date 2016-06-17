package com.miracle.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.CollegeQueryDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CollegePeopleVO;


@Repository("collegeQueryDAO")
public class CollegeQueryDAOImpl extends BaseQueryDAOImpl<Car, Map<String, Object>> implements CollegeQueryDAO {

	
	@Override
	public int findIfCollegeCampCheckIn(String collegeId) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findIfCollegeCampCheckIn", collegeId);
	}
	
	
	@Override
	public List<CampActivitySignupVO> findCampActivitySignupAllByActivityId(String activityId) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectList(getNameSpace() + ".findCampActivitySignupAllByActivityId", activityId);
	}
	
	
	@Override
	public List<CollegePeopleVO> findCollegePeopleCheckInAllByDate(String campDate) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findCollegePeopleCheckInAllByDate", campDate);
	}
	
	
	@Override
	public List<CollegePeopleVO> findCollegePeopleNoCheckInAllByDate(String campDate) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findCollegePeopleNoCheckInAllByDate", campDate);
	}
	
}