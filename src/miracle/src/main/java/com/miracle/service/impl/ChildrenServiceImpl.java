package com.miracle.service.impl;


import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.common.ExcelUtil;
import com.miracle.common.TimeMachine;
import com.miracle.dao.ChildrenQueryDAO;
import com.miracle.dao.ChildrenTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.jpa.ChildrenDAO;
import com.miracle.dao.jpa.PeopleDAO;
import com.miracle.dao.jpa.WorshipDAO;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.People;
import com.miracle.mode.PresentWorship;
import com.miracle.mode.Statement;
import com.miracle.mode.Worship;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.service.ChildrenService;



@Service
public class ChildrenServiceImpl implements ChildrenService {
	
	private static final Logger log = LoggerFactory.getLogger(ChildrenServiceImpl.class);
	
	@Autowired
	private ChildrenQueryDAO childrenQueryDAO;
	
	@Autowired
	private ChildrenTrsDAO childrenTrsDAO;
	
	@Autowired
	private ChildrenDAO childrenDAO;
	
	@Autowired
	private PeopleDAO peopleDAO;
	
	@Autowired
	private WorshipDAO worshipDAO;
	
	@PersistenceUnit
    private EntityManagerFactory emf; 
	
	@PersistenceContext
	protected EntityManager entityManager;
	
	@Autowired
	private TimeMachine timeMachine;
	
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
	public Page<People> queryPeopleDataAll(Pageable pageable) throws DAOObjectNotFoundException {
		
		
		return peopleDAO.findAll(pageable);
	}
	
	@Override
	public Page<People> queryPeopleDataAllByGrade(String grade, Pageable pageable) throws DAOObjectNotFoundException {
		
		
		return peopleDAO.findAllByGrade(grade, pageable);
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
		
		String path = "C://excel/people.xls";
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
				
//				if(i==0){
				
				String name = map.get(0);//姓名
				String gender = map.get(1);//姓別
				String year = map.get(2);//出生年月日
				String month = map.get(3);//出生年月日
				String day = map.get(4);//出生年月日
				String role = map.get(5);//角色
				String status = map.get(6);//狀態
				String tel1 = map.get(7);//電話1
				String tel2 = map.get(8);//電話2
				String addr = map.get(9);//住址
				String email = map.get(10);//email
				String comm = map.get(11);//牧區ID
				String groupId = map.get(12);//群組ID
				String edu = map.get(13);//教育程度
				String school = map.get(14);//學校名稱
				String grade = map.get(15);//年級
				String worship = map.get(16);//崇拜ID
				String note = map.get(17);//備註
				
				if(gender.equals("女")){
					gender = "0";
				}else if(gender.equals("男")){
					gender = "1";
				}
				
				String birthday = null;
				if(StringUtils.isNotBlank(name)){
					
					if(StringUtils.isBlank(year) ||
							StringUtils.isBlank(month) ||
							StringUtils.isBlank(day)){
						
					}else{
				
						birthday = convertTWDateToADDate(year, month, day);
					
					}
//					edu = "0";
					
					if(grade.equals("1")){
						grade = "6";
					}else if(grade.equals("2")){
						grade = "7";
					}else if(grade.equals("3")){
						grade = "8";
					}else if(grade.equals("4")){
						grade = "9";
					}else if(grade.equals("5")){
						grade = "10";
					}else if(grade.equals("6")){
						grade = "11";
					}else if(grade.equals("中班")){
						grade = "4";
					}else if(grade.equals("高一")){
						grade = "15";
					}else if(grade.equals("大班")){
						grade = "5";
					}
					
					People people = new People();
					people.setId(newRandomUUID());
					people.setName(name);
					people.setGender(gender);
					people.setBirthday(birthday);
					people.setRole(role);
					people.setStatus(status);
					people.setTel1(tel1);
					people.setTel2(tel2);
					people.setAddr(addr);
					people.setEmail(email);
					people.setComm(comm);
					people.setGroupId(groupId);
					people.setEdu(edu);
					people.setSchool(school);
					people.setGrade(grade);
					people.setWorship(worship);
					people.setCreateTime(timeMachine.todayFormat());
					people.setNote(note);
					
					//註冊用戶
					em.persist(people);
				}
				
//				}
			   
			   }
			
			 i++;
		   }
		   
		   em.getTransaction().commit();
		   isCorrect = true;
		   em.close();
		   
		} catch (Exception ex) {
			log.info(ex.toString());
			em.getTransaction().rollback();
        	isCorrect = false;
        	em.close();
		}
		   
		return isCorrect;
	}
	
	
	private String newRandomUUID() {
        String uuidRaw = UUID.randomUUID().toString();
        return uuidRaw.replaceAll("-", "");
    }
	
	
	public static String convertTWDateToADDate(String twDate, String month, String day) {
		String addate = "";
		/*
        if (twDate.length() != 7)
            return "";*/

        try {
            int yy = Integer.valueOf(twDate).intValue() + 1911;
            String year = String.valueOf(yy);
            //String month = twDate.substring(3, 5);
            //String day = twDate.substring(5, 7);
            addate = year + "-" + month + "-" + day;
        } catch (Exception ignore) {
            addate = "";
        }

        return addate;
    }
	
	@Override
	public String queryWorshipIdByKey(String peopleId) throws DAOObjectNotFoundException {

		
		return childrenQueryDAO.findWorshipIdByKey(peopleId);
	}
	
	
	@Override
	public List<Worship> queryWorshipAll() throws DAOObjectNotFoundException {
		
		
		return worshipDAO.findAll();
	}
	
	@Override
	public List<PresentWorshipVO> queryPresentWorshipAll(String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException {
		
		
		return childrenQueryDAO.findPresentWorshipAll(beginTime, endTime, worshId);
	}
	
}
