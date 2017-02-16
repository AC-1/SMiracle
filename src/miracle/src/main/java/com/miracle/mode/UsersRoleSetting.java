package com.miracle.mode;
import java.io.Serializable;



/**
 @author Joshua
 * 系統人員登入
 */

public class UsersRoleSetting  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String roleId;
	private String roleName;
	private String roleDesc;
	
	
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
	public String getRoleDesc() {
		return roleDesc;
	}
	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
