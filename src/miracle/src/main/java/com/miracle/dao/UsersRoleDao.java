package com.miracle.dao;

import java.util.Map;

import com.miracle.mode.Users;
import com.miracle.mode.UsersRole;

public interface UsersRoleDao extends BaseDAO<Users, Map<String, Object>> {

	UsersRole findByUserName(String userName) throws DAOObjectNotFoundException;
}
