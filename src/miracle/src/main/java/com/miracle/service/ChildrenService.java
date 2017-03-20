package com.miracle.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.Statement;
import com.miracle.mode.jpa.Comm;
import com.miracle.mode.jpa.People;
import com.miracle.mode.jpa.PeopleGroup;
import com.miracle.mode.jpa.PresentWorship;
import com.miracle.mode.jpa.Worship;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.mode.vo.WorshipReportVO;



public interface ChildrenService {
	
	/** 查詢單個人資料及牧區資料*/
	public PeopleVO queryPeopleData(String peopleId) throws DAOObjectNotFoundException;

	/** 查詢單個人資料全部 - 分頁*/
	public Page<People> queryPeopleDataAll(Pageable pageable) throws DAOObjectNotFoundException;
	
	/** 查詢單個人資料全部By年級 - 分頁*/
	public Page<People> queryPeopleDataAllByGrade(String grade, Pageable pageable) throws DAOObjectNotFoundException;
	
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
	
	/** 查詢所有崇拜堂數*/
	public List<Worship> queryWorshipAll() throws DAOObjectNotFoundException;
	
	/** 查詢所有崇拜聚會
	 *  依時間或worshId查詢 
	 */
	public List<PresentWorshipVO> queryPresentWorshipAll(String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException;
	
	/** 
	 * 查詢報表Year 人數
	 */
	public List<WorshipReportVO> queryWorshipReportAll(String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException;

	
	/** 查詢所有崇拜報到資料 - 分頁*/
	public List<PresentWorshipVO> queryPresentWorshipAllPage(PageBounds pageBounds, String beginTime, String endTime, String worshId) throws DAOObjectNotFoundException;

/**--------小組設定------------------------------------------------------------*/
	/** 查小組設定 - 分頁*/
	public Page<PeopleGroup> queryPeopleGroupAllPage(Pageable pageable) throws DAOObjectNotFoundException;
	
	/** 查小組設定*/
	public List<PeopleGroup> queryPeopleGroupAll() throws DAOObjectNotFoundException;
	
	/** 新增小組設定   */
	public boolean createPeopleGroup(PeopleGroup peopleGroup) throws DAOObjectNotFoundException;

	/** 
	 *  查詢小組設定By Id
	 */
	public PeopleGroup queryPeopleGroup(String id) throws DAOObjectNotFoundException;
	
	/** 刪除小組設定*/
	public Boolean deletePeopleGroup(String id) throws DAOObjectNotFoundException;
	
/**--------崇拜設定------------------------------------------------------------*/
	
	/** 查崇拜設定 - 分頁*/
	public Page<Worship> queryWorshipAllPage(Pageable pageable) throws DAOObjectNotFoundException;
	
	/** 新增崇拜設定   */
	public boolean createWorship(Worship worship) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢崇拜By Id
	 */
	public Worship queryWorship(String id) throws DAOObjectNotFoundException;
	
	/** 刪除崇拜設定*/
	public Boolean deleteWorship(String id) throws DAOObjectNotFoundException;
	
/**--------牧區設定------------------------------------------------------------*/
	
	/** 查牧區設定 - 分頁*/
	public Page<Comm> queryCommAllPage(Pageable pageable) throws DAOObjectNotFoundException;
	
	/** 查牧區設定 */
	public List<Comm> queryCommAll() throws DAOObjectNotFoundException;
	
	
	/** 新增牧區設定   */
	public boolean createComm(Comm comm) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢牧區設定By Id
	 */
	public Comm queryComm(String id) throws DAOObjectNotFoundException;
	
	/** 刪除牧區設定*/
	public Boolean deleteComm(String id) throws DAOObjectNotFoundException;
	
/**--------個人資料設定------------------------------------------------------------*/
	
	/** 查個人資料設定 - 分頁*/
	public List<PeopleVO> queryPeopleAllPage(PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查個人資料設定 - 分頁 By name*/
	public List<PeopleVO> queryPeopleAllPageByName(PageBounds pageBounds, String name) throws DAOObjectNotFoundException;
	
	/** 新增個人資料設定   */
	public boolean createPeople(People people) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢個人資料By Id
	 */
	public People queryPeople(String id) throws DAOObjectNotFoundException;
	
	/** 刪除個人資料設定*/
	public Boolean deletePeople(String id) throws DAOObjectNotFoundException;
	
}
