package com.miracle.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.LoginTrsDAO;
import com.miracle.mode.Account;


@Repository("loginTrsDAO")
public class LoginTrsDAOImpl extends BaseTrsDAOImpl<Account, Map<String, Object>> implements LoginTrsDAO {

	
	
}