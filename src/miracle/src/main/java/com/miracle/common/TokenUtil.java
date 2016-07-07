package com.miracle.common;

import java.util.HashMap;
import java.util.UUID;

import org.springframework.stereotype.Component;

/**
 * 
 * 產生序號
 *
 */
@Component
public class TokenUtil {
	
	private  HashMap<String,String> tokens = new HashMap<String, String>();
	
	public String check(String token) {
		return tokens.get(token);
	}
	
	public String generateSeq(){
		String uid = UUID.randomUUID().toString();
		return uid;
	}
	
	public String generate() {
		String uid = generateSeq();
		tokens.put(uid, uid);
		return uid;
	}
	
	public void remove(String token) {
		tokens.remove(token);
	}
}
