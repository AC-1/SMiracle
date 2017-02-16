package com.miracle.dao;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.mode.UsersRoleSetting;
import com.miracle.mode.vo.UsersVO;


public interface UsersSettingQTrsDAO extends BaseDAO<UsersVO, Map<String, Object>> {
	
	
	/** 查詢所有系統登入人員資料*/
	public List<UsersVO> findUsersAll(PageBounds pageBounds) throws DAOObjectNotFoundException;

	/** 查詢所有權限資料*/
	public List<UsersRoleSetting> findUsersRoleSettingAll() throws DAOObjectNotFoundException;
	
	/** 查詢單一權限資料*/
	public UsersRoleSetting findUsersRoleSettingById(String roleId) throws DAOObjectNotFoundException;
	
	/** 查詢登入員帳號是否新增過*/
	public Integer findUsersChk(String username) throws DAOObjectNotFoundException;
	
	/** 新增登入員資料*/
	public Integer createUsersData(UsersVO usersVO);
	
	/** 新增登入員權限資料*/
	public Integer createUsersRoleData(UsersVO usersVO);
	
	/** 查詢單一登入員資料*/
	public UsersVO findUsersById(String id) throws DAOObjectNotFoundException;
	
	/** 修改登入員資料*/
	public Integer updateUsersData(UsersVO usersVO);
	
	/** 修改登入員權限資料*/
	public Integer updateUsersRoleData(UsersVO usersVO);
	
	/** 刪除登入員權限資料*/
	public Integer deleteUsersRoleData(String username);
	
	/** 刪除登入員資料*/
	public Integer deleteUsersData(String id);
	
	
}