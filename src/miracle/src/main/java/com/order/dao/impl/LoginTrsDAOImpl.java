package com.order.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.order.dao.LoginTrsDAO;
import com.order.mode.Account;


@Repository("loginTrsDAOTarget")
public class LoginTrsDAOImpl extends BaseTrsDAOImpl<Account, Map<String, Object>> implements LoginTrsDAO {

	
	
}