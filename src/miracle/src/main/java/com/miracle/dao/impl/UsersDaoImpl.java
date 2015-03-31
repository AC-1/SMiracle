package com.miracle.dao.impl;

import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.UsersDao;
import com.miracle.mode.Account;
import com.miracle.mode.Users;

@Repository("usersDao")
public class UsersDaoImpl extends BaseQueryDAOImpl<Users, Map<String, Object>> implements  UsersDao{

	@Override
	public Users findByUsersName(String usersName) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findByUsersName", usersName);

	}
	
	
	
}
