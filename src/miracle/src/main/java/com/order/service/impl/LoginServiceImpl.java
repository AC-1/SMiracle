package com.order.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.order.dao.LoginQueryDAO;
import com.order.dao.LoginTrsDAO;
import com.order.mode.Account;
import com.order.service.LoginService;
import com.order.util.SecretUtil;



@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginQueryDAO loginQueryDAO;
	
	@Autowired
	private LoginTrsDAO loginTrsDAO;
	
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
		return loginQueryDAO.findByUserPassword(userId, encryptPwd);
	}

	
	

	
	
}
