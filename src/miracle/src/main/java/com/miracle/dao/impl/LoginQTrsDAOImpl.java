package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.LoginQTrsDAO;
import com.miracle.mode.Account;


@Repository("loginQTrsDAO")
public class LoginQTrsDAOImpl extends BaseDAOImpl<Account, Map<String, Object>> implements LoginQTrsDAO {

	
	@Override
	public Account findByUserPassword(String userId, String userPw)  {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("userPw", userPw);
		return this.getSqlSession().selectOne(getNameSpace() + ".findByUserPassword", map);
	}
	
	
}