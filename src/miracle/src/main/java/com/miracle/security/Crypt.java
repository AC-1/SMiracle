package com.miracle.security;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.miracle.common.SecretUtil;

public class Crypt implements PasswordEncoder{

	@Autowired
	private SecretUtil sert;
	
	@Override
	public String encode(CharSequence rawPassword) {
		String password = "";
		try {
			 password = sert.encrypt(rawPassword.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return password;
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		
		boolean result  = false;
		try {
			result = sert.matches(rawPassword.toString(), encodedPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
		
	}
}
