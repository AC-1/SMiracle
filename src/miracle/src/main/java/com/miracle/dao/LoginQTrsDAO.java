package com.miracle.dao;

import java.util.Map;

import com.miracle.mode.Account;


public interface LoginQTrsDAO extends BaseDAO<Account, Map<String, Object>> {
	
	
	public Account findByUserPassword(String userId, String userPw) throws DAOObjectNotFoundException;
	
	
	
	
}