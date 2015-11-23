package com.miracle.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.People;
import com.miracle.mode.PresentWorship;
import com.miracle.mode.Statement;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.mode.vo.WorshipVO;



public interface ChildrenService {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException;

	/** 查詢單個人資料全部 - 分頁*/
	public Page<People> queryPeopleDataAll(Pageable pageable) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public List<Contact> queryContact(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢䏈絡資料*/
	public CareTime queryCareTime(String peopleId) throws DAOObjectNotFoundException;
	
	/** 查詢崇拜活動*/
	public List<PresentWorshipVO> queryPresentWorship(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢成長記錄*/
	public List<Statement> queryStatementAll(String peopleId, PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢崇拜報到-查詢*/
	public String queryPresentWorshipByKey(PresentWorship presentWorship) throws DAOObjectNotFoundException;
	
	/** 新增第一次報到*/
	public PresentWorship createPresentWorship(PresentWorship presentWorship) throws DAOObjectNotFoundException;

	/** 更新重覆報到*/
	public Boolean updatePresentWorshipById(String id) throws DAOObjectNotFoundException;
	
	/** 查詢單個人資料*/
	public People queryPeopleById(String peopleId) throws DAOObjectNotFoundException;
	
	/** 更新報到登出*/
	public Boolean updatePresentWorshipChkoutById(String pid, String cid, String worship) throws DAOObjectNotFoundException;
	
	/** 讀取Excel 匯入兒童基本資料*/
	public Boolean excelImport() throws DAOObjectNotFoundException;
	
	/** 打卡查詢那一堂*/
	public String queryWorshipIdByKey(String peopleId) throws DAOObjectNotFoundException;
	
}
