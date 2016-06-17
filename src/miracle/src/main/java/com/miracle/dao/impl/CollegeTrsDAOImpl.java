package com.miracle.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.CollegeTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.Car;
import com.miracle.mode.CollegeCampCheckIn;


@Repository("collegeTrsDAO")
public class CollegeTrsDAOImpl extends BaseTrsDAOImpl<Car, Map<String, Object>> implements CollegeTrsDAO {

	
	@Override
	public int createCollegeCampCheckIn(CollegeCampCheckIn collegeCampCheckIn) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().insert(getNameSpace() + ".createCollegeCampCheckIn", collegeCampCheckIn);
	}
	
	
	@Override
	public int updateCollegeCampCheckIn(String collegeId) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().insert(getNameSpace() + ".updateCollegeCampCheckIn", collegeId);
	}

}