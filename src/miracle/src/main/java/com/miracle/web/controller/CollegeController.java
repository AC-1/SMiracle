package com.miracle.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.miracle.common.JSONUtils;
import com.miracle.common.Language;
import com.miracle.common.SecretUtil;
import com.miracle.common.SysParameterUtil;
import com.miracle.common.TimeMachine;
import com.miracle.common.Tools;
import com.miracle.mode.CampActivity;
import com.miracle.mode.CampActivitySignup;
import com.miracle.mode.CollegePeople;
import com.miracle.mode.JSONPObject;
import com.miracle.mode.vo.CampActivitySignupVO;
import com.miracle.mode.vo.CollegePeopleVO;
import com.miracle.service.CollegeService;



@Controller
@RequestMapping("/college")
public class CollegeController extends BaseController {

	@Autowired
	private CollegeService collegeService;

	@Autowired
	private Tools tls;
	
	@Autowired
	private SysParameterUtil spu;
	
	@Autowired
	private Language lng;
	
	@Autowired
	private SecretUtil sert;
	
	@Autowired
	private JSONUtils jsonTool;
	
	@Autowired
	private TimeMachine timeMachine;
	
	private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	/** 
	 * 營會點名報到 打卡
	 */
	@ResponseBody
	@RequestMapping(value = "/checkin", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject checkIn (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String chkInTimeTest = StringUtils.trimToEmpty(req.getParameter("chkInTimeTest"));//正式打卡傳""會抓系統時間 測式打卡時間格式2016-06-25 14:30:00
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));//學生ID
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		String checkInfo = StringUtils.trimToEmpty(req.getParameter("checkInfo"));//報到資訊
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		Boolean isCorrect = false;
		boolean isCheckInTime = true;
		String checkTypeTime = "";
		
		try {
			Date date = new Date();
			if(StringUtils.isNotBlank(chkInTimeTest)){
				date = sdf.parse(chkInTimeTest);
			}
			
			//判斷報到到時段
			//判斷8點到10點
    		Date start=timeMachine.changeTime(new Date(), 8, 00, 00);
    		Date end=timeMachine.changeTime(new Date(), 10, 00, 00);
			boolean isTime = timeMachine.isDateBetween(date, start, end);
			//判斷12:30點到14:30點
			Date start2=timeMachine.changeTime(new Date(), 12, 30, 00);
    		Date end2=timeMachine.changeTime(new Date(), 14, 30, 00);
			boolean isTime2 = timeMachine.isDateBetween(date, start2, end2);
			
			if(isTime){
				checkTypeTime = "1";
			}else if(isTime2){
				checkTypeTime = "2";
			}else{
				isCheckInTime =false;//不在打卡時間之內
			} 
			
			if(isCheckInTime){
			
				//查詢是否有此學生
				CollegePeople collegePeople = collegeService.queryCollegePeopleById(collegeId);
				
				//查營會資料
				CampActivity campActivity = collegeService.queryCampActivity(activityId);
				
				if(collegePeople != null){
				
					//查詢報名表是否報名
					CampActivitySignup campActivitySignup = collegeService.queryCampActivitySignup(collegeId, activityId);
					
					//判斷是否報到過
					boolean isCheckIn = collegeService.queryIfCollegeCampCheckIn(collegeId, checkTypeTime);
					if(!isCheckIn){
						
						//第一次報到打卡
						isCorrect = collegeService.createCollegeCampCheckIn(collegeId, activityId, checkTypeTime, checkInfo);
						
						//更新報名表，設為Y
						if(campActivitySignup != null){
							campActivitySignup.setIfCheckIn("Y");
							collegeService.updateCampActivitySignup(campActivitySignup);
						}
						
					}else{
						
						//重覆報到打卡
						isCorrect = collegeService.updateCollegeCampCheckIn(collegeId, checkTypeTime, checkInfo);
						
						//更新報名表，設為Y
						if(campActivitySignup != null){
							campActivitySignup.setIfCheckIn("Y");
							collegeService.updateCampActivitySignup(campActivitySignup);
						}
					}
					
					if(isCorrect){
						
						jsonMap.put("status", "OK");
						
						if(campActivitySignup != null){
							jsonMap.put("msg", "打卡成功");
						}else{
							jsonMap.put("msg", "打卡成功，但查無此學生有報名過");
						}
					
					}else{
						jsonMap.put("status", "ERR");
						jsonMap.put("msg", "打卡失敗");
					}
					
					jsonMap.put("collegePeople", collegePeople);
					jsonMap.put("campActivity", campActivity);
					
				}else{
					
					jsonMap.put("status", "ERR");
					jsonMap.put("msg", "查無此人ID資料，無法打卡!");
				}
			
			}else{
				
				jsonMap.put("status", "ERR");
				jsonMap.put("msg", "不在打卡時間之內，無法打卡!");
			}
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 營會報名
	 */
	@ResponseBody
	@RequestMapping(value = "/campregistration", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject campRegistration (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));//學生ID
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		Boolean isCorrect = false;
		
		try {
			
			//查詢報名表是否報名過
			CampActivitySignup campActivitySignup = collegeService.queryCampActivitySignup(collegeId, activityId);
			if(campActivitySignup == null){
				//新報名
				isCorrect = collegeService.createCampActivitySignup(collegeId, activityId);
				if(isCorrect){
					
					jsonMap.put("status", "OK");
					jsonMap.put("msg", "報名成功");
				}else{
					
					jsonMap.put("status", "ERR");
					jsonMap.put("msg", "報名失敗");
				}
				
			}else{
				//已報名過
				jsonMap.put("status", "OK");
				jsonMap.put("msg", "此人員已經報名了");
			}
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 刪除營會報名
	 */
	@ResponseBody
	@RequestMapping(value = "/delcampregistration", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject delCampRegistration (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));//學生ID
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		Boolean isCorrect = false;
		
		try {
			
			//查詢報名表是否報名過
			CampActivitySignup campActivitySignup = collegeService.queryCampActivitySignup(collegeId, activityId);
			if(campActivitySignup != null){
				
				//刪除報名
				isCorrect = collegeService.deleteCampActivitySignup(collegeId, activityId);
				if(isCorrect){
					
					jsonMap.put("status", "OK");
					jsonMap.put("msg", "刪除報名成功");
				}else{
					
					jsonMap.put("status", "ERR");
					jsonMap.put("msg", "刪除報名失敗");
				}
				
			}else{
				
				//已報名過
				jsonMap.put("status", "ERR");
				jsonMap.put("msg", "此人員尚未報名");
			}
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查所有營會資料
	 */
	@ResponseBody
	@RequestMapping(value = "/querycampactivityall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryCampActivityAll (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			//查營會資料
			List<CampActivity> campActivityList = collegeService.queryCampActivityAll();
			
			jsonMap.put("status", "OK");
			jsonMap.put("campActivityList", campActivityList);
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查營會所有報名人員資料
	 */
	@ResponseBody
	@RequestMapping(value = "/querycampactivitysignupall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryCampActivitySignupAll (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		
		try {
			
			//查營會報名人員資料
			List<CampActivitySignupVO> campActivitySignupList = collegeService.queryCampActivitySignupAllByActivityId(activityId);
			
			jsonMap.put("status", "OK");
			jsonMap.put("campActivitySignupList", campActivitySignupList);
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查營會打卡報到人員資料 - 依時間
	 */
	@ResponseBody
	@RequestMapping(value = "/querycheckincollegedataall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryCheckInCollegeDataAll (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		String campDate = StringUtils.trimToEmpty(req.getParameter("campDate"));//查那一天營會 格式 2016-06-17
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		String checkTypeTime = StringUtils.trimToEmpty(req.getParameter("checkTypeTime"));//查那一時段空""：查整天全部， 1：am 8:00~10:00，2：12:30 ~ 14:30， 3：非報到時間 後台手動報到
		
		try {
			
			//查營會打卡報到人員
			List<CollegePeopleVO> collegePeopleVOList = collegeService.queryCollegePeopleCheckInAllByDate(campDate, activityId, checkTypeTime);
			
			jsonMap.put("status", "OK");
			jsonMap.put("collegePeopleVOList", collegePeopleVOList);
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	
	/** 
	 * 查營會打卡未報到人員資料 - 依時間
	 */
	@ResponseBody
	@RequestMapping(value = "/querynocheckincollegedataall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryNoCheckInCollegeDataAll (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		String campDate = StringUtils.trimToEmpty(req.getParameter("campDate"));//查那一天營會 格式 2016-06-17
		
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		
		try {
			
			//查營會打卡未報到人員
			List<CollegePeopleVO> collegePeopleVOList = collegeService.queryCollegePeopleNoCheckInAllByDate(campDate, activityId);
			
			jsonMap.put("status", "OK");
			jsonMap.put("collegePeopleVOList", collegePeopleVOList);
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查學生人員基本資料
	 */
	@ResponseBody
	@RequestMapping(value = "/querycollegepeopleall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryCollegePeopleAll (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));//查那一個人ID，如空則查全部
		
		try {
			
			
			
			if(StringUtils.isNotBlank(collegeId)){
				
				CollegePeople  collegePeople = collegeService.queryCollegePeopleById(collegeId);
				jsonMap.put("collegePeople", collegePeople);
				
			}else{
				
				List<CollegePeople>  collegePeopleList = collegeService.queryCollegePeopleAll();
				jsonMap.put("collegePeopleList", collegePeopleList);
			}
			
			
			jsonMap.put("status", "OK");
			
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("msg", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	//人員基本資料設定首頁
	@RequestMapping(value = "/sign/querycollegepeople", method = {RequestMethod.GET, RequestMethod.POST})
	public String queryCollegePeople(Model model, @ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("msg") String msg,
			@ModelAttribute("selectType") String selectType1,
			@ModelAttribute("collegeId") String collegeId1,
			@ModelAttribute("collegeName") String collegeName1,
			@ModelAttribute("collegeGrade") String collegeGrade1,
			@ModelAttribute("collegeLeader") String collegeLeader1,
			HttpServletRequest req, HttpSession s)  throws Exception {
	
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			if(pageNumber1 != null && !pageNumber1.equals("")){
				pageNumber=pageNumber1;//修改頁面而來
			}else{
				pageNumber="0";//首頁進來
			}
		}
		
		String selectType = StringUtils.trimToEmpty(req.getParameter("selectType"));
		if(selectType == null || selectType.equals("")){
			if(selectType1 != null && !selectType1.equals("")){
				selectType=selectType1;
			}else{
				selectType="";//首頁進來
			}
		}
		
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));
		if(collegeId == null || collegeId.equals("")){
			if(collegeId1 != null && !collegeId1.equals("")){
				collegeId=collegeId1;
			}else{
				collegeId="";//首頁進來
			}
		}
		
		String collegeName = StringUtils.trimToEmpty(req.getParameter("collegeName"));
		if(collegeName == null || collegeName.equals("")){
			if(collegeName1 != null && !collegeName1.equals("")){
				collegeName=collegeName1;
			}else{
				collegeName="";//首頁進來
			}
		}
		
		String collegeGrade = StringUtils.trimToEmpty(req.getParameter("collegeGrade"));
		if(collegeGrade == null || collegeGrade.equals("")){
			if(collegeGrade1 != null && !collegeGrade1.equals("")){
				collegeGrade=collegeGrade1;
			}else{
				collegeGrade="";//首頁進來
			}
		}
		
		String collegeLeader = StringUtils.trimToEmpty(req.getParameter("collegeLeader"));
		if(collegeLeader == null || collegeLeader.equals("")){
			if(collegeLeader1 != null && !collegeLeader1.equals("")){
				collegeLeader=collegeLeader1;
			}else{
				collegeLeader="";//首頁進來
			}
		}
		
		int pageIndex = Integer.parseInt(pageNumber); //第幾頁 - 從1開始 0會報錯
		int pageSize = 7;//每頁幾筆
		int page = (pageIndex-1)*pageSize;
		
//		Sort sort = new Sort (Direction.ASC, "sort");
		Pageable pageable = new PageRequest(pageIndex, pageSize);
		
		Page<CollegePeople> collegePeopleList = null;
		if(StringUtils.isNotBlank(selectType) && selectType.equals("1")){
			if(StringUtils.isNotBlank(collegeId)){
				
				collegePeopleList = collegeService.queryCollegePeopleAllByCollegeId(pageable, collegeId);
			
			}else if(StringUtils.isNotBlank(collegeName)){
				
				collegePeopleList = collegeService.queryCollegePeopleAllByCollegeName(pageable, collegeName);
			
			}else if(StringUtils.isNotBlank(collegeGrade)){
				
				collegePeopleList = collegeService.queryCollegePeopleAllByCollegeGrade(pageable, collegeGrade);
			
			}else if(StringUtils.isNotBlank(collegeLeader)){
				
				collegePeopleList = collegeService.queryCollegePeopleAllByCollegeLeader(pageable, collegeLeader);
			
			}else {
				
				collegePeopleList = collegeService.queryCollegePeopleAll(pageable);
			}
			
		}else{
			
			//查詢所有資料
			collegePeopleList = collegeService.queryCollegePeopleAll(pageable);
		}
		
		//查詢所有資料
		model.addAttribute(collegePeopleList.getContent());
		
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", collegePeopleList.getTotalPages());
		
		model.addAttribute("msg", msg);
		
		model.addAttribute("collegeId", collegeId);
		model.addAttribute("collegeName", collegeName);
		model.addAttribute("collegeGrade", collegeGrade);
		model.addAttribute("collegeLeader", collegeLeader);
		model.addAttribute("selectType", selectType);
		
		return "collegepeople/queryCollegePeople";
	}
	
	
	//新增人員設定
	@RequestMapping(value = "/sign/addcollegepeople", method = RequestMethod.GET)
	public String addCollegePeople(Model model,
			@ModelAttribute("msg") String msg, @ModelAttribute("pageNumber") String pageNumber,
			HttpServletRequest req, HttpSession s)  throws Exception {
		
		
		 model.addAttribute("pageNumber", pageNumber);
	     model.addAttribute("msg", msg);
		
		return "collegepeople/addCollegePeople";
	}
	
	
	//人員設定- 新增
	@RequestMapping(value = "/sign/createcollegepeople", method = RequestMethod.POST )
	public String createCollegePeople( 
			@ModelAttribute CollegePeople collegePeople,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String resultValue = "";
		try {
			
			collegePeople.setCollegeId(timeMachine.newRandomUUID());
			Boolean isCorrect = collegeService.createCollegePeople(collegePeople);
			
			if(isCorrect){
				resultValue="新增成功";
				
			}else{
				resultValue="新增失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addFlashAttribute("msg", resultValue); 
		
		
		return "redirect:/college/sign/querycollegepeople";
	}
	
	
	//人員設定- 修改頁面
	@RequestMapping(value = "/sign/editcollegepeople", method = {RequestMethod.POST, RequestMethod.GET})
	public String editCollegePeople(@ModelAttribute("id") String id1, @ModelAttribute("msg") String msg,
			@ModelAttribute("pageNumber") String pageNumber1,
			Model model, HttpServletRequest req, HttpSession s )  throws Exception {
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber1"));//分頁點擊
		if(StringUtils.isNotBlank(pageNumber1)){
			pageNumber = pageNumber1;
		}
		
		String id = StringUtils.trimToEmpty(req.getParameter("id"));
		if(StringUtils.isNotBlank(id1)){
			id = id1;
		}
		
		//查詢
		CollegePeople collegePeople = collegeService.queryCollegePeople(id);
		
		model.addAttribute("msg", msg);
		model.addAttribute("collegePeople", collegePeople);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("id", id);
		
		
		return "collegepeople/editCollegePeople";
	}
	
	
	//人員設定 - 修改
	@RequestMapping(value = "/sign/updatecollegepeople", method = RequestMethod.POST )
	public String updateCollegePeople(
			@ModelAttribute CollegePeople collegePeople,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));
		
		String resultValue = "";
		
		try {
			
			//修改
			Boolean isCorrect = collegeService.createCollegePeople(collegePeople);
			
			if(isCorrect){
				resultValue="修改成功";
				
			}else{
				resultValue="修改失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addFlashAttribute("msg", resultValue);
		attr.addFlashAttribute("pageNumber", pageNumber);
		
		
		return "redirect:/college/sign/querycollegepeople";
	}
	
	
	//刪除人員設定
	@RequestMapping(value = "/sign/deletecollegepeople", method = RequestMethod.POST )
	public String deleteCollegePeople( @RequestParam String delId,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		String resultValue = "";
		
		try {
			
			//刪除
			Boolean isCorrect = collegeService.deleteCollegePeople(delId);
			if(isCorrect){
				resultValue = "刪除成功";
			}else{
				resultValue = "刪除失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addFlashAttribute("msg", resultValue); 
		attr.addFlashAttribute("pageNumber", pageNumber); 
		
		return "redirect:/college/sign/querycollegepeople";
	}
	
	
	//手動報到打卡
	@RequestMapping(value = "/sign/handcheckin", method = RequestMethod.GET)
	public String handCheckIn(Model model,
			@ModelAttribute("msg") String msg,
			@ModelAttribute("collegeId") String collegeId,
			@ModelAttribute("activityId") String activityId,
			@ModelAttribute("checkInfo") String checkInfo,
			HttpServletRequest req, HttpSession s)  throws Exception {
		
		//查營會資料
		List<CampActivity> campActivityList = collegeService.queryCampActivityAll();
		model.addAttribute("campActivityList", campActivityList);
	    
		model.addAttribute("msg", msg);
		model.addAttribute("collegeId", collegeId);
		model.addAttribute("activityId", activityId);
		model.addAttribute("checkInfo", checkInfo);
		
		return "handcheckin/handCheckIn";
	}
	
	
	//手動報到打卡-儲存 
	@RequestMapping(value = "/sign/createhandcheckin", method = RequestMethod.POST )
	public String createHandCheckIn( 
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String resultValue = "";
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));//學生ID
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		String checkInfo = StringUtils.trimToEmpty(req.getParameter("checkInfo"));//報到資訊
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		Boolean isCorrect = false;
		String checkTypeTime = "";
		
		try {

			checkTypeTime = "3";
			
			//查詢是否有此學生
			CollegePeople collegePeople = collegeService.queryCollegePeopleById(collegeId);
			
			//查營會資料
			CampActivity campActivity = collegeService.queryCampActivity(activityId);
			
			if(collegePeople != null){
			
				//查詢報名表是否報名
				CampActivitySignup campActivitySignup = collegeService.queryCampActivitySignup(collegeId, activityId);
				
				//判斷是否報到過
				boolean isCheckIn = collegeService.queryIfCollegeCampCheckIn(collegeId, checkTypeTime);
				if(!isCheckIn){
					
					//第一次報到打卡
					isCorrect = collegeService.createCollegeCampCheckIn(collegeId, activityId, checkTypeTime, checkInfo);
					
					//更新報名表，設為Y
					if(campActivitySignup != null){
						campActivitySignup.setIfCheckIn("Y");
						collegeService.updateCampActivitySignup(campActivitySignup);
					}
					
				}else{
					
					//重覆報到打卡
					isCorrect = collegeService.updateCollegeCampCheckIn(collegeId, checkTypeTime, checkInfo);
					
					//更新報名表，設為Y
					if(campActivitySignup != null){
						campActivitySignup.setIfCheckIn("Y");
						collegeService.updateCampActivitySignup(campActivitySignup);
					}
				}
				
				if(isCorrect){
					
					if(campActivitySignup != null){
						resultValue="打卡成功";
					}else{
						resultValue="打卡成功，但查無此學生有報名過";
					}
				
				}else{
					resultValue="打卡失敗";
					
					attr.addFlashAttribute("collegeId", collegeId);	
					attr.addFlashAttribute("activityId", activityId);	
					attr.addFlashAttribute("checkInfo", checkInfo);
					
				}
				
//					jsonMap.put("collegePeople", collegePeople);
//					jsonMap.put("campActivity", campActivity);
				
			}else{
				
				resultValue="查無此人ID資料，無法打卡!";
				
				attr.addFlashAttribute("collegeId", collegeId);	
				attr.addFlashAttribute("activityId", activityId);	
				attr.addFlashAttribute("checkInfo", checkInfo);	
			}
			
        
		} catch (Exception e) {
			resultValue="Message:"+e.getMessage();
			
			attr.addFlashAttribute("collegeId", collegeId);	
			attr.addFlashAttribute("activityId", activityId);	
			attr.addFlashAttribute("checkInfo", checkInfo);	
		}
		
		attr.addFlashAttribute("msg", resultValue); 
		
		return "redirect:/college/sign/handcheckin";
	}

}