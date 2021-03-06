package com.miracle.service;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.mode.jpa.CampActivity;
import com.miracle.mode.jpa.CampActivitySignup;
import com.miracle.mode.jpa.CollegePeople;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CheckInReportVO;
import com.miracle.mode.vo.CollegePeopleVO;



public interface CollegeService {
	
	/** 
	 *  查詢學生基本資料
	 */
	public CollegePeople queryCollegePeopleById(String collegeId) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查詢所有學生基本資料
	 */
	public List<CollegePeople> queryCollegePeopleAll() throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢所有營會資料
	 */
	public List<CampActivity> queryCampActivityAll() throws DAOObjectNotFoundException;
	
	/** 查詢所有營會資料 - 分頁*/
	public Page<CampActivity> queryCampActivityAllPage(Pageable pageable) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢營會資料By Id
	 */
	public CampActivity queryCampActivity(String activityId) throws DAOObjectNotFoundException;
	
	
	/** College 大學生 營會 查詢是否報到過
	 *	collegeId:學生ID
	 */
	public Boolean queryIfCollegeCampCheckIn(String date, String collegeId, String checkTypeTime) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  第一次報到打卡寫進DB
	 *  College 大學生 營會 當天今天報到打卡
	 *  collegeId:學生ID 
	 */
	public Boolean createCollegeCampCheckIn(Date date, String collegeId, String activityId, String checkTypeTime, String checkInfo) throws DAOObjectNotFoundException;
	
	/** 
	 *  重覆報到打卡寫進DB
	 *  College 大學生 營會 當天今天報到重覆打卡
	 *  collegeId:學生ID 
	 */
	public Boolean updateCollegeCampCheckIn(String date, String collegeId, String checkTypeTime, String checkInfo) throws DAOObjectNotFoundException;
	
	/** 
	 *  打卡寫進報名表DB
	 *  College 大學生 營會 當天今天報到 打卡寫進報名表
	 *  collegeId:學生ID 
	 */
	public Boolean updateCampActivitySignup(CampActivitySignup campActivitySignup) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查詢報名表是否報名過
	 */
	public CampActivitySignup queryCampActivitySignup(String collegeId, String activityId) throws DAOObjectNotFoundException;
	
	/** 
	 *  營會報名
	 */
	public Boolean createCampActivitySignup(String collegeId, String activityId) throws DAOObjectNotFoundException;
	
	/** 
	 *  刪除營會報名
	 */
	public Boolean deleteCampActivitySignup(String collegeId, String activityId) throws DAOObjectNotFoundException;
	
	/** 
	 *  刪除營會報名
	 */
	public Boolean deleteCampActivitySignupById(String signupId) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢所有報名人員資料By營會ID
	 */
	public List<CampActivitySignupVO> queryCampActivitySignupAllByActivityId(String activityId) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查營會打卡報到人員
	 */
	public List<CollegePeopleVO> queryCollegePeopleCheckInAllByDate(String campDate, String activityId, String checkTypeTime) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查營會打卡未報到人員
	 */
	public List<CollegePeopleVO> queryCollegePeopleNoCheckInAllByDate(String campDate, String activityId) throws DAOObjectNotFoundException;
	
	
	/** 讀取Excel 匯入基本資料*/
	public Boolean excelImport() throws DAOObjectNotFoundException;
	
	/** 讀取 基本資料 匯入報名表*/
	public Boolean setCampActivitySignup(String activityId) throws DAOObjectNotFoundException;
	
	
	/** 查詢人員基本資料設定 - 分頁*/
	public Page<CollegePeople> queryCollegePeopleAll(Pageable pageable) throws DAOObjectNotFoundException;

	/** 查詢人員基本資料設定 - 分頁 - BY collegeId*/
	public Page<CollegePeople> queryCollegePeopleAllByCollegeId(Pageable pageable, String collegeId) throws DAOObjectNotFoundException;
	
	/** 查詢人員基本資料設定 - 分頁 - BY collegeName*/
	public Page<CollegePeople> queryCollegePeopleAllByCollegeName(Pageable pageable, String collegeName) throws DAOObjectNotFoundException;
	
	/** 查詢人員基本資料設定 - 分頁 - BY collegeGrade*/
	public Page<CollegePeople> queryCollegePeopleAllByCollegeGrade(Pageable pageable, String collegeGrade) throws DAOObjectNotFoundException;
	
	/** 查詢人員基本資料設定 - 分頁 - BY collegeLeader*/
	public Page<CollegePeople> queryCollegePeopleAllByCollegeLeader(Pageable pageable, String collegeLeader) throws DAOObjectNotFoundException;
	
	/** 新增人員基本資料設定  */
	public boolean createCollegePeople(CollegePeople collegePeople) throws DAOObjectNotFoundException;
	
	/** 查詢單一人員基本資料設定*/
	public CollegePeople queryCollegePeople(String collegeId) throws DAOObjectNotFoundException;
	
	/** 刪除人員基本資料設定*/
	public Boolean deleteCollegePeople(String collegeId) throws DAOObjectNotFoundException;
	
	/** 查詢所有營會報名人員資料 - 分頁*/
	public List<CampActivitySignupVO> queryCampActivitySignupAll(PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 查詢所有營會報名人員資料 - BY Key - 分頁*/
	public List<CampActivitySignupVO> queryCampActivitySignupAllByKey(String activityId, String collegeId, String collegeName, PageBounds pageBounds) throws DAOObjectNotFoundException;
	
	/** 新增營會資料設定  */
	public boolean createCampActivity(CampActivity campActivity) throws DAOObjectNotFoundException;
	
	
	/** 
	 *  查詢報名表By營會
	 */
	public List<CampActivitySignup> queryCampActivitySignupByActivityId(String activityId) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢報名表By人員
	 */
	public List<CampActivitySignup> queryCampActivitySignupByCollegeId(String collegeId) throws DAOObjectNotFoundException;
	
	
	/** 刪除營會資料設定*/
	public Boolean deleteCampActivity(String activityId) throws DAOObjectNotFoundException;
	
	/** 
	 *  查詢報名打卡資料
	 *  checkTypeTime 1 :上午，2：下午，3：後台打卡
	 *  campDate：日期 格式：年-月-日
	 */
	public List<CheckInReportVO> queryCheckInReport(String activityId, String campDate, String checkTypeTime) throws DAOObjectNotFoundException;
	
	
}
