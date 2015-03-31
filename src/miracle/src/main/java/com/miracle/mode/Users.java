package com.miracle.mode;

import java.io.Serializable;

public class Users extends UsersRole implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private String username;
	
	private String password;
	
	private UsersRole usersRole;
	
	private String createDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UsersRole getUsersRole() {
		return usersRole;
	}

	public void setUsersRole(UsersRole usersRole) {
		this.usersRole = usersRole;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
}
