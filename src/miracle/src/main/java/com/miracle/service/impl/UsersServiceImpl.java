package com.miracle.service.impl;


import java.util.List;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.common.TimeMachine;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.UsersSettingQTrsDAO;
import com.miracle.mode.UsersRoleSetting;
import com.miracle.mode.vo.UsersVO;
import com.miracle.service.UsersService;



@Service
public class UsersServiceImpl implements UsersService {
	
	final Log log = LogFactory.getLog(UsersService.class);
	
	@Autowired
	private UsersSettingQTrsDAO UsersQueryDAO;
	
	@PersistenceContext
	protected EntityManager entityManager;
	
	@Autowired
	private TimeMachine timeMachine;
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;
	
	
	@Override
	public List<UsersVO> queryUsersAll(PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return UsersQueryDAO.findUsersAll(pageBounds);
	}
	
	
	@Override
	public List<UsersRoleSetting> queryUsersRoleSettingAll() throws DAOObjectNotFoundException {
		
		return UsersQueryDAO.findUsersRoleSettingAll();
	}
	
	
	@Override
	public UsersRoleSetting queryUsersRoleSettingById(String roleId) throws DAOObjectNotFoundException {
		
		
		return UsersQueryDAO.findUsersRoleSettingById(roleId);
	}
	
	
	@Override
	public Boolean queryUsersChk(String username) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false; 
	    
    	int count  = UsersQueryDAO.findUsersChk(username);
    	if(count >0 ){
			isCorrect = true;
		}
		return isCorrect;
	}
	
	
	@Override
	public Boolean createUsersData(UsersVO usersVO) {
		
		def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = transactionManager.getTransaction(def);
		
		int count1 = 0;
		boolean isCorrect = false;
		try {
			// 新增登入員資料
			int count = UsersQueryDAO.createUsersData(usersVO);

			if(count >0){
				// 新增登入員權限資料
				count1 = UsersQueryDAO.createUsersRoleData(usersVO);
			}

			if (count1 > 0) {
				isCorrect = true;
				transactionManager.commit(status);
			}else{
				transactionManager.rollback(status);
			}
			
		} catch (Exception ex) {
			log.info(ex.toString());
			transactionManager.rollback(status);
		}
		
		return isCorrect;
	}
	
	
	@Override
	public UsersVO queryUsersById(String id) throws DAOObjectNotFoundException {
		
		
		return UsersQueryDAO.findUsersById(id);
	}
	
	
	@Override
	public Boolean updateUsersData(UsersVO usersVO) {
		
		def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = transactionManager.getTransaction(def);
		
		int count1 = 0;
		boolean isCorrect = false;
		try {
			// 修改登入員資料
			int count = UsersQueryDAO.updateUsersData(usersVO);

			if(count >0){
				// 修改登入員權限資料
				count1 = UsersQueryDAO.updateUsersRoleData(usersVO);
			}

			if (count1 > 0) {
				isCorrect = true;
				transactionManager.commit(status);
			}else{
				transactionManager.rollback(status);
			}
			
		} catch (Exception ex) {
			log.info(ex.toString());
			transactionManager.rollback(status);
		}
		
		return isCorrect;
	}
	
	
	@Override
	public Boolean deleteUsersData(String id, String username) {
		
		def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = transactionManager.getTransaction(def);
		
		int count1 = 0;
		boolean isCorrect = false;
		try {
			
			// 刪除登入員權限資料
			int count = UsersQueryDAO.deleteUsersRoleData(username);

			if(count >0){
				// 刪除登入員資料
				count1 = UsersQueryDAO.deleteUsersData(id);
			}

			if (count1 > 0) {
				isCorrect = true;
				transactionManager.commit(status);
			}else{
				transactionManager.rollback(status);
			}
			
		} catch (Exception ex) {
			log.info(ex.toString());
			transactionManager.rollback(status);
		}
		
		return isCorrect;
	}
	
	
}
