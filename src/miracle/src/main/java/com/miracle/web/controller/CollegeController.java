package com.miracle.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	
	/** 
	 * 營會點名報到 打卡
	 */
	@ResponseBody
	@RequestMapping(value = "/checkin", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject checkIn (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String collegeId = StringUtils.trimToEmpty(req.getParameter("collegeId"));//學生ID
		String activityId = StringUtils.trimToEmpty(req.getParameter("activityId"));//營會ID
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		Boolean isCorrect = false;
		
		try {
			
			//查詢是否有此學生
			CollegePeople collegePeople = collegeService.queryCollegePeopleById(collegeId);
			
			//查營會資料
			CampActivity campActivity = collegeService.queryCampActivity(activityId);
			
			if(collegePeople != null){
			
				//查詢報名表是否報名
				CampActivitySignup campActivitySignup = collegeService.queryCampActivitySignup(collegeId, activityId);
				
				//判斷是否報到過
				boolean isCheckIn = collegeService.queryIfCollegeCampCheckIn(collegeId);
				if(!isCheckIn){
					
					//第一次報到打卡
					isCorrect = collegeService.createCollegeCampCheckIn(collegeId, activityId);
					
					//更新報名表，設為Y
					if(campActivitySignup != null){
						campActivitySignup.setIfCheckIn("Y");
						collegeService.updateCampActivitySignup(campActivitySignup);
					}
					
				}else{
					
					//重覆報到打卡
					isCorrect = collegeService.updateCollegeCampCheckIn(collegeId);
					
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
		
		try {
			
			//查營會打卡報到人員
			List<CollegePeopleVO> collegePeopleVOList = collegeService.queryCollegePeopleCheckInAllByDate(campDate, activityId);
			
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

}