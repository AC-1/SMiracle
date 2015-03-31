package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.LoginQueryDAO;
import com.miracle.mode.Account;


@Repository("loginQueryDAO")
public class LoginQueryDAOImpl extends BaseQueryDAOImpl<Account, Map<String, Object>> implements LoginQueryDAO {

	
	@Override
	public Account findByUserPassword(String userId, String userPw)  {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("userPw", userPw);
		return this.getSqlSession().selectOne(getNameSpace() + ".findByUserPassword", map);
	}
	
	
}