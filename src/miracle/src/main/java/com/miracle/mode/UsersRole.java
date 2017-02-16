package com.miracle.mode;

import java.io.Serializable;


/**
 * @desc 使用者權限
 */
public class UsersRole implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	private int role;
	
	private String username;
	
	private String rolename;
	
	private String userId;
	
	private Users users;

	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
}
