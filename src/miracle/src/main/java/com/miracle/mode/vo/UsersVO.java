package com.miracle.mode.vo;
import java.io.Serializable;



/**
 @author Joshua
 * 系統人員登入
 */

public class UsersVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String userRoldId;
	private String username;
	private String password;
	private String name;
	private String roleDesc;
	private String createDate;
	
	private String roleId;
	private String roleName;
	
	private String oldPassword;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserRoldId() {
		return userRoldId;
	}
	public void setUserRoldId(String userRoldId) {
		this.userRoldId = userRoldId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoleDesc() {
		return roleDesc;
	}
	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	
	
	
	
	
	
	
	
	
	
	
}
