package com.miracle.service;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.UsersRoleSetting;
import com.miracle.mode.vo.UsersVO;



public interface UsersService {
	
	
	/** 查詢所有系統登入人員資料*/
	public List<UsersVO> queryUsersAll(PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢所有權限資料*/
	public List<UsersRoleSetting> queryUsersRoleSettingAll() throws DAOObjectNotFoundException;
	
	/** 查詢單一權限資料*/
	public UsersRoleSetting queryUsersRoleSettingById(String roleId) throws DAOObjectNotFoundException;
	
	/** 查詢登入員帳號是否新增過*/
	public Boolean queryUsersChk(String username) throws DAOObjectNotFoundException;
	
	/** 新增登入員資料*/
	public Boolean createUsersData(UsersVO usersVO);
	
	/** 查詢單一登入員資料*/
	public UsersVO queryUsersById(String id) throws DAOObjectNotFoundException;
	
	/** 修改登入員資料*/
	public Boolean updateUsersData(UsersVO usersVO);
	
	/** 刪除登入員資料*/
	public Boolean deleteUsersData(String id, String username);
	
}
