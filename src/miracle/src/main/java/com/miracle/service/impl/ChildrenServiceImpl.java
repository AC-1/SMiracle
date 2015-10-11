package com.miracle.service.impl;


import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.common.ExcelUtil;
import com.miracle.dao.ChildrenQueryDAO;
import com.miracle.dao.ChildrenTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.jpa.ChildrenDAO;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.People;
import com.miracle.mode.PresentWorship;
import com.miracle.mode.Statement;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.service.ChildrenService;



@Service
public class ChildrenServiceImpl implements ChildrenService {
	
	@Autowired
	private ChildrenQueryDAO childrenQueryDAO;
	
	@Autowired
	private ChildrenTrsDAO childrenTrsDAO;
	
	@Autowired
	private ChildrenDAO childrenDAO;
	
	@PersistenceUnit
    private EntityManagerFactory emf; 
	
	@PersistenceContext
	protected EntityManager entityManager;
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;
	
	@Autowired
	private ExcelUtil excelUtil;
	
	@Override
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findPeopleData(peopleId);
	}

	@Override
	public List<Contact> queryContact(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findContact(peopleId);
	}

	@Override
	public CareTime queryCareTime(String peopleId) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findCareTime(peopleId);
	}
	
	@Override
	public List<PresentWorshipVO> queryPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findPresentWorship(peopleId, pageBounds);
	}
	
	@Override
	public List<Statement> queryStatementAll(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		return childrenQueryDAO.findStatementAll(peopleId, pageBounds);
	}
	
	@Override
	public String queryPresentWorshipByKey(PresentWorship presentWorship) throws DAOObjectNotFoundException {

		
		return childrenQueryDAO.findPresentWorshipByKey(presentWorship);
	}
	
	@Override
	public PresentWorship createPresentWorship(PresentWorship presentWorship) throws DAOObjectNotFoundException {
		
		
		return childrenDAO.save(presentWorship);
	}
	
	@Override
	public Boolean updatePresentWorshipById(String id) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		int count = childrenTrsDAO.updatePresentWorshipById(id);
		
		if(count >0){
			isCorrect = true;
		}
		
		return isCorrect;
	}
	
	@Override
	public People queryPeopleById(String peopleId) throws DAOObjectNotFoundException {
		
		
		return entityManager.find(People.class, peopleId);
	}
	
	@Override
	public Boolean updatePresentWorshipChkoutById(String pid, String cid, String worship) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		int count = childrenTrsDAO.updatePresentWorshipChkoutById(pid, cid, worship);
		
		if(count >0){
			isCorrect = true;
		}
		
		return isCorrect;
	}
	
	@Override
	public Boolean excelImport() throws DAOObjectNotFoundException {
		
		String path = "C://excel/people.xlsx";
		boolean isCorrect = false;
		
		//讀取Excel
	    List<Map<Integer, String>> list = excelUtil.getCustmoers(path);
	   
	    //匯入帳戶
	    isCorrect = this.importPeople(list);
		
		return isCorrect;
	}
	
	
	public Boolean importPeople(List<Map<Integer, String>> list) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		EntityManager em = emf.createEntityManager();
		 
		try {
			
		   em.getTransaction().begin();
		  
		   int i=0;
		   for(Map<Integer, String> map : list){
			   
			if(map != null && !map.equals("")){
				
				String name = map.get(0);//姓名
//				String spotExteriorId = map.get(1);//班點外碼
//				String spotName = map.get(2);//班點名稱
//				String spotStation = map.get(3);//班點站別
//				String spotPause = map.get(4);//班點狀態
//				String delData = map.get(5);//刪除
				
				People people = new People();
				people.setId(newRandomUUID());
				people.setName(name);
				people.setGender("");
				people.setBirthday(null);
				people.setRole("");
				people.setStatus("");
				people.setTel1("");
				people.setTel2("");
				people.setAddr("");
				people.setEmail("");
				people.setComm("");
				people.setGroup("");
				people.setEdu("");
				people.setSchool("");
				people.setGrade("");
				people.setWorship("");
				people.setCreate("2015 10-11 15:50");
				people.setNote("");
				
				//註冊用戶
				em.persist(people);
			   
			   }
			
			 i++;
		   }
		   
		   em.getTransaction().commit();
		   isCorrect = true;
		   
		   
		} catch (Exception ex) {
//			log.info(ex.toString());
			em.getTransaction().rollback();
        	isCorrect = false;
		}
		   
		return isCorrect;
	}
	
	
	private String newRandomUUID() {
        String uuidRaw = UUID.randomUUID().toString();
        return uuidRaw.replaceAll("-", "");
    }
	
}
