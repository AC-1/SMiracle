package com.miracle.service.impl;


import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

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
import com.miracle.dao.CollegeQTrsDAO;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.jpa.CampActivityDAO;
import com.miracle.dao.jpa.CampActivitySignupDAO;
import com.miracle.dao.jpa.CollegePeopleDAO;
import com.miracle.mode.CampActivity;
import com.miracle.mode.CampActivitySignup;
import com.miracle.mode.CollegeCampCheckIn;
import com.miracle.mode.CollegePeople;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CollegePeopleVO;
import com.miracle.service.CollegeService;



@Service
public class CollegeServiceImpl implements CollegeService {
	
	private static final Logger log = LoggerFactory.getLogger(CollegeServiceImpl.class);
	
	@Autowired
	private CollegeQTrsDAO collegeQTrsDAO;
	
	@Autowired
	private CampActivitySignupDAO campActivitySignupDAO;
	
	@Autowired
	private  CampActivityDAO campActivityDAO;
	
	@Autowired
	private  CollegePeopleDAO collegePeopleDAO;
	
	@Autowired
	private ExcelUtil excelUtil;
	
	@Autowired
	private TimeMachine timeMachine;
	
	@PersistenceUnit
    private EntityManagerFactory emf; 
	
	@PersistenceContext
	protected EntityManager entityManager;
	
	@Resource
	private DataSourceTransactionManager transactionManager;
	private DefaultTransactionDefinition def;
	
	
	
	@Override
	public CollegePeople queryCollegePeopleById(String collegeId) throws DAOObjectNotFoundException {
		
		
		return entityManager.find(CollegePeople.class, collegeId);
	}
	
	@Override
	public List<CollegePeople> queryCollegePeopleAll() throws DAOObjectNotFoundException {
		
		
		return collegePeopleDAO.findAll();
	}
	
	@Override
	public List<CampActivity> queryCampActivityAll() throws DAOObjectNotFoundException {
		
		return campActivityDAO.findAll();
	}
	
	@Override
	public Page<CampActivity> queryCampActivityAllPage(Pageable pageable) throws DAOObjectNotFoundException {
		
		return campActivityDAO.findAll(pageable);
	}
	
	
	@Override
	public CampActivity queryCampActivity(String activityId) throws DAOObjectNotFoundException {
		
		
		return entityManager.find(CampActivity.class, activityId);
	}
	
	@Override
	public Boolean queryIfCollegeCampCheckIn(String date, String collegeId, String checkTypeTime) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		int count = collegeQTrsDAO.findIfCollegeCampCheckIn(date, collegeId, checkTypeTime);
		if(count >0 ){
			isCorrect = true;
		}
		
		return isCorrect;
	}
	
	
	@Override
	public Boolean createCollegeCampCheckIn(Date date, String collegeId, String activityId, String checkTypeTime, String checkInfo) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		TimeMachine idtime = new TimeMachine();
		String id =  idtime.serial("checkIn", 0);
		CollegeCampCheckIn collegeCampCheckIn = new CollegeCampCheckIn();
		collegeCampCheckIn.setCheckInId(id);
		collegeCampCheckIn.setCollegeId(collegeId);
		collegeCampCheckIn.setCampDate(idtime.dateFormatYMD(date));
		collegeCampCheckIn.setActivityId(activityId);
		collegeCampCheckIn.setCheckTypeTime(checkTypeTime);
		collegeCampCheckIn.setCheckInfo(checkInfo);
		collegeCampCheckIn.setCheckInTime(idtime.dateFormat(date));
		collegeCampCheckIn.setCheckInLastTime(idtime.dateFormat(date));
		int count = collegeQTrsDAO.createCollegeCampCheckIn(collegeCampCheckIn);
		
		if(count >0){
			isCorrect = true;
		}
		
		return isCorrect;
	}
	
	@Override
	public Boolean updateCollegeCampCheckIn(String date,String collegeId, String checkTypeTime, String checkInfo) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		
		int count = collegeQTrsDAO.updateCollegeCampCheckIn(date, collegeId, checkTypeTime, checkInfo);
		
		if(count >0){
			isCorrect = true;
		}
		
		return isCorrect;
	}
	
	
	@Override
	public Boolean updateCampActivitySignup(CampActivitySignup campActivitySignup) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		try {
			
			campActivitySignupDAO.save(campActivitySignup);
			
			isCorrect = true;
			
		} catch (Exception e) {
        	isCorrect = false;
        	log.info("updateCampActivitySignup 更新報名表失敗" + e.getMessage() );
		}
		
		return isCorrect;
	}
	
	@Override
	public CampActivitySignup queryCampActivitySignup(String collegeId, String activityId) throws DAOObjectNotFoundException {
		
		
		return campActivitySignupDAO.findCampActivitySignup(activityId, collegeId);
	}
	
	
	
	@Override
	public Boolean createCampActivitySignup(String collegeId, String activityId) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		try {
			
			TimeMachine idtime = new TimeMachine();
			String id =  idtime.serial("signup", 0);
			CampActivitySignup campActivitySignup = new CampActivitySignup();
			campActivitySignup.setSignupId(id);
			campActivitySignup.setActivityId(activityId);
			campActivitySignup.setCollegeId(collegeId);
			campActivitySignup.setIfCheckIn("N");
			campActivitySignup.setSignupDate(idtime.todayFormat());
			
			campActivitySignupDAO.save(campActivitySignup);
			
			isCorrect = true;
			
		} catch (Exception e) {
        	isCorrect = false;
        	log.info("createCampActivitySignup 報名表新增失敗" + e.getMessage() );
		}
		
		return isCorrect;
	}
	
	@Override
	public Boolean deleteCampActivitySignup(String collegeId, String activityId) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		try {
			
			//刪除 CampActivitySignup
			Query query = em.createQuery("DELETE FROM CampActivitySignup e WHERE activityId = ?1 and collegeId = ?2 ");
//     	    query.setParameter("propertyValue", value);
			query.setParameter(1, activityId);
			query.setParameter(2, collegeId);
			long rows = query.executeUpdate();
			
			
			if(rows > 0 ){
				em.getTransaction().commit();
				isCorrect = true;
			}else{
				em.getTransaction().rollback();
				isCorrect = false;
			}
			
			em.close();
			
		} catch (Exception e) {
			isCorrect = false;
			log.info("deleteCampActivitySignup error :"+e.getMessage());
			em.getTransaction().rollback();
			em.close();
		}
		
		return isCorrect;
	}
	
	@Override
	public Boolean deleteCampActivitySignupById(String signupId) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		try {
			
			//刪除 CampActivitySignup
			Query query = em.createQuery("DELETE FROM CampActivitySignup e WHERE signupId = ?1 ");
//     	    query.setParameter("propertyValue", value);
			query.setParameter(1, signupId);
			long rows = query.executeUpdate();
			
			
			if(rows > 0 ){
				em.getTransaction().commit();
				isCorrect = true;
			}else{
				em.getTransaction().rollback();
				isCorrect = false;
			}
			
			em.close();
			
		} catch (Exception e) {
			isCorrect = false;
			log.info("deleteCampActivitySignupById error :"+e.getMessage());
			em.getTransaction().rollback();
			em.close();
		}
		
		return isCorrect;
	}
	
	@Override
	public List<CampActivitySignupVO> queryCampActivitySignupAllByActivityId(String activityId) throws DAOObjectNotFoundException {
		
		
		return collegeQTrsDAO.findCampActivitySignupAllByActivityId(activityId);
	}
	
	
	@Override
	public List<CollegePeopleVO> queryCollegePeopleCheckInAllByDate(String campDate, String activityId, String checkTypeTime) throws DAOObjectNotFoundException {
		
		
		return collegeQTrsDAO.findCollegePeopleCheckInAllByDate(campDate, activityId, checkTypeTime);
	}
	
	
	@Override
	public List<CollegePeopleVO> queryCollegePeopleNoCheckInAllByDate(String campDate, String activityId) throws DAOObjectNotFoundException {
		
		
		return collegeQTrsDAO.findCollegePeopleNoCheckInAllByDate(campDate, activityId);
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
				
				
				String id = map.get(0);//編號
				String collegeArea = map.get(1);//小區
				String collegeGroup = map.get(2);//小組
				String collegeName = map.get(3);//姓名
				String collegeGender = map.get(4);//性別
				String collegeBirthday = map.get(5);//生日
				String collegeSchoolGrade = map.get(6);//學校年級
				String collegePhone = map.get(7);//手機
				String collegeTel = map.get(8);//家電
				
				
				if(StringUtils.isNotBlank(collegeName)){
					
					CollegePeople collegePeople = new CollegePeople();
					collegePeople.setCollegeId(timeMachine.newRandomUUID());
					collegePeople.setCollegeArea(collegeArea);
					collegePeople.setCollegeGroup(collegeGroup);
					collegePeople.setCollegeName(collegeName);
					collegePeople.setCollegeGender(collegeGender);
					collegePeople.setCollegeBirthday(collegeBirthday);
					collegePeople.setCollegeSchoolGrade(collegeSchoolGrade);
					collegePeople.setCollegePhone(collegePhone);
					collegePeople.setCollegeTel(collegeTel);
//					collegePeople.setCollegeGrade("1");
//					collegePeople.setCollegeLeader("Y");
					
					collegePeople.setCollegeGrade("2");
					collegePeople.setCollegeLeader("Y");
					
					//註冊用戶
					em.persist(collegePeople);
				}
				
			   
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
	
	
	
	@Override
	public Boolean setCampActivitySignup(String activityId) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		EntityManager em = emf.createEntityManager();
		 
		try {
		  	
           //查所有人員學生 		
 		   List<CollegePeople> collegePeopleList = this.queryCollegePeopleAll();
			
		   em.getTransaction().begin();
		  
		   int i=0;
		   for(CollegePeople collegePeople : collegePeopleList){
				
			
			TimeMachine idtime = new TimeMachine();
			String id =  idtime.serial("signup", i);
			CampActivitySignup campActivitySignup = new CampActivitySignup();
			campActivitySignup.setSignupId(id);
			campActivitySignup.setActivityId(activityId);
			campActivitySignup.setCollegeId(collegePeople.getCollegeId());
			campActivitySignup.setIfCheckIn("N");
			campActivitySignup.setSignupDate(idtime.todayFormat());
			
			em.persist(campActivitySignup);
				
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
	
	
	@Override
	public Page<CollegePeople> queryCollegePeopleAll(Pageable pageable) throws DAOObjectNotFoundException {
		
		
		return collegePeopleDAO.findAll(pageable);
	}
	
	
	@Override
	public boolean createCollegePeople(CollegePeople collegePeople) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		try {
			
			collegePeopleDAO.save(collegePeople);
			
			isCorrect = true;
			
		} catch (Exception e) {
        	isCorrect = false;
        	log.info("createCollegePeople error:" + e.getMessage() );
		}
		
		return isCorrect;
	}
	
	@Override
	public Page<CollegePeople> queryCollegePeopleAllByCollegeId(Pageable pageable, String collegeId)throws DAOObjectNotFoundException {
		
		
		return collegePeopleDAO.findCollegePeopleAllByCollegeId(collegeId, pageable);
	}
	
	@Override
	public Page<CollegePeople> queryCollegePeopleAllByCollegeName(Pageable pageable, String collegeName)throws DAOObjectNotFoundException {
		
		
		return collegePeopleDAO.findCollegePeopleAllByCollegeName(collegeName, pageable);
	}
	
	@Override
	public Page<CollegePeople> queryCollegePeopleAllByCollegeGrade(Pageable pageable, String collegeGrade)throws DAOObjectNotFoundException {
		
		return collegePeopleDAO.findCollegePeopleAllByCollegeGrade(collegeGrade, pageable);
	}
	
	@Override
	public Page<CollegePeople> queryCollegePeopleAllByCollegeLeader(Pageable pageable, String collegeLeader)throws DAOObjectNotFoundException {
	
		return collegePeopleDAO.findCollegePeopleAllByCollegeLeader(collegeLeader, pageable);
	}
	
	@Override
	public CollegePeople queryCollegePeople(String collegeId)throws DAOObjectNotFoundException {
		
		
		return entityManager.find(CollegePeople.class, collegeId);
	}
	
	@Override
	public Boolean deleteCollegePeople(String collegeId)throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		try {
			isCorrect = false;
			
			//刪除
			Query query = em.createQuery("DELETE FROM CollegePeople e WHERE collegeId = ?1 ");
//      	query.setParameter("propertyValue", value);
			query.setParameter(1, collegeId);
			long rows = query.executeUpdate();
			
			if(rows > 0){
				em.getTransaction().commit();
				isCorrect = true;
			}else{
				em.getTransaction().rollback();
				isCorrect = false;
			}
			
			em.close();
		} catch (Exception e) {
			log.info("deleteCollegePeople eror："+e.getMessage());
			em.close();
		}
		
		return isCorrect;
	}
	
	@Override
	public List<CampActivitySignupVO> queryCampActivitySignupAll(PageBounds pageBounds) throws DAOObjectNotFoundException {
		
		
		return collegeQTrsDAO.findCampActivitySignupAll(pageBounds);
	}
	
	@Override
	public List<CampActivitySignupVO> queryCampActivitySignupAllByKey(String activityId, String collegeId, String collegeName, PageBounds pageBounds) throws DAOObjectNotFoundException {

		
		return collegeQTrsDAO.findCampActivitySignupAllByKey(activityId, collegeId, collegeName, pageBounds);
	}
	
	@Override
	public boolean createCampActivity(CampActivity campActivity) throws DAOObjectNotFoundException {
	
		boolean isCorrect = false;
		
		try {
			
			campActivityDAO.save(campActivity);
			
			isCorrect = true;
			
		} catch (Exception e) {
        	isCorrect = false;
        	log.info("createCampActivity error:" + e.getMessage() );
		}
		
		return isCorrect;
	}
	
	@Override
	public List<CampActivitySignup> queryCampActivitySignupByActivityId(String activityId) throws DAOObjectNotFoundException {
		
		
		return campActivitySignupDAO.findCampActivitySignupByActivityId(activityId);
	}
	
	@Override
	public Boolean deleteCampActivity(String activityId) throws DAOObjectNotFoundException {
		
		boolean isCorrect = false;
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		try {
			isCorrect = false;
			
			//刪除
			Query query = em.createQuery("DELETE FROM CampActivity e WHERE activityId = ?1 ");
//      	query.setParameter("propertyValue", value);
			query.setParameter(1, activityId);
			long rows = query.executeUpdate();
			
			if(rows > 0){
				em.getTransaction().commit();
				isCorrect = true;
			}else{
				em.getTransaction().rollback();
				isCorrect = false;
			}
			
			em.close();
		} catch (Exception e) {
			log.info("deleteCampActivity eror："+e.getMessage());
			em.close();
		}
		
		return isCorrect;
	}
	
}
