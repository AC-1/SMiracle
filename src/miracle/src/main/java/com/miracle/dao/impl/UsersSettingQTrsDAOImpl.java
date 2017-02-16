package com.miracle.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.UsersSettingQTrsDAO;
import com.miracle.mode.UsersRoleSetting;
import com.miracle.mode.vo.UsersVO;


@Repository("usersSettingQTrsDAO")
public class UsersSettingQTrsDAOImpl extends BaseDAOImpl<UsersVO, Map<String, Object>> implements UsersSettingQTrsDAO {

	
	@Override
	public List<UsersVO> findUsersAll(PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectList(getNameSpace() + ".findUsersAll", null, pageBounds);
	}
	
	
	@Override
	public List<UsersRoleSetting> findUsersRoleSettingAll() throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectList(getNameSpace() + ".findUsersRoleSettingAll");
	}
	
	
	@Override
	public UsersRoleSetting findUsersRoleSettingById(String roleId) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findUsersRoleSettingById", roleId);
	}
	
	
	@Override
	public Integer findUsersChk(String username) throws DAOObjectNotFoundException {
		
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findUsersChk", username);
	}
	
	@Override
	public Integer createUsersData(UsersVO usersVO) {
		
		return this.getSqlSession().insert(getNameSpace() + ".createUsersData", usersVO);
	}
	
	@Override
	public Integer createUsersRoleData(UsersVO usersVO) {
		
		
		return this.getSqlSession().insert(getNameSpace() + ".createUsersRoleData", usersVO);
	}
	
	@Override
	public UsersVO findUsersById(String id) throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectOne(getNameSpace() + ".findUsersById", id);
	}
	
	
	@Override
	public Integer updateUsersData(UsersVO usersVO) {
		
		return this.getSqlSession().update(getNameSpace() + ".updateUsersData", usersVO);
	}
	
	@Override
	public Integer updateUsersRoleData(UsersVO usersVO) {
	
		return this.getSqlSession().update(getNameSpace() + ".updateUsersRoleData", usersVO);
	}
	
	@Override
	public Integer deleteUsersRoleData(String username) {
		
		return this.getSqlSession().delete(getNameSpace() + ".deleteUsersRoleData", username);
	}
	
	@Override
	public Integer deleteUsersData(String id) {
		
		return this.getSqlSession().delete(getNameSpace() + ".deleteUsersData", id);
	}
	
	
}