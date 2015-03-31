package com.miracle.dao;

import java.util.Map;

import com.miracle.mode.Users;

public interface UsersDao extends BaseQueryDAO<Users, Map<String, Object>> {
	

	Users findByUsersName(String usersName) throws DAOObjectNotFoundException;
}
