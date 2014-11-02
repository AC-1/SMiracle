package com.order.mode;
import java.io.Serializable;


/**
 @author Joshua
 
 * USER_ID 			帳號
 * USER_PW  		密碼	
 * USER_NAME		姓名
 * USER_AGE			年齡
 * USER_BIRTHDAY	生日
 */

public class Account  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String userPw;
	private String userName;
	private String userAge;
	private String userBirthday;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAge() {
		return userAge;
	}
	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	
	
	
	
	
}
