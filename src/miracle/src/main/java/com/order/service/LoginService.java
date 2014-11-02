package com.order.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.order.mode.Account;


public interface LoginService {
	
	final Log log = LogFactory.getLog(LoginService.class);
	
	public Account queryUser(String userId, String userPw);
	
	
	
	
	
}
