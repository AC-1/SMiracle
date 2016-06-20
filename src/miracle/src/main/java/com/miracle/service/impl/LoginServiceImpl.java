package com.miracle.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miracle.common.SecretUtil;
import com.miracle.dao.LoginQTrsDAO;
import com.miracle.mode.Account;
import com.miracle.service.LoginService;



@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginQTrsDAO loginQTrsDAO;
	
	@Autowired
	private SecretUtil sert;

	@Override
	public Account queryUser(String userId, String userPw) {
		
		String encryptPwd = "";
		
		try {
			encryptPwd = sert.encrypt(userPw);
			
		} catch (Exception e) {
			log.error(e);
		}
		return loginQTrsDAO.findByUserPassword(userId, encryptPwd);
	}

	
	

	
	
}
