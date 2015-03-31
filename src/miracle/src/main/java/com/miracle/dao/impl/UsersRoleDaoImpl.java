package com.miracle.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.UsersDao;
import com.miracle.dao.UsersRoleDao;
import com.miracle.mode.Users;
import com.miracle.mode.UsersRole;

@Repository("usersRoleDao")
public class UsersRoleDaoImpl extends BaseQueryDAOImpl<Users, Map<String, Object>> implements   UsersRoleDao{

	@Override
	public UsersRole findByUserName(String userName) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findByUserName", userName);
	}
	
	
}
