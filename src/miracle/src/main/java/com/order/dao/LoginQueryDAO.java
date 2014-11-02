package com.order.dao;

import java.util.Map;

import com.order.mode.Account;


public interface LoginQueryDAO extends BaseQueryDAO<Account, Map<String, Object>> {
	
	
	public Account findByUserPassword(String userId, String userPw) throws DAOObjectNotFoundException;
	
	
	
	
}