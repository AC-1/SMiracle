package com.miracle.mode;

import java.io.Serializable;

/**
 * @desc 使用者權限
 */
public class UsersRole implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	
	private int role;
	
	private String username;
	
	private String rolename;
	
	private Long userId;
	
	private Users users;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
}
