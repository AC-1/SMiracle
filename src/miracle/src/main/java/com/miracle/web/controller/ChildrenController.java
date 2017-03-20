package com.miracle.web.controller;

import java.util.ArrayList;
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
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.miracle.common.JSONUtils;
import com.miracle.common.Language;
import com.miracle.common.SecretUtil;
import com.miracle.common.SysParameterUtil;
import com.miracle.common.TimeMachine;
import com.miracle.common.Tools;
import com.miracle.mode.CareTime;
import com.miracle.mode.Contact;
import com.miracle.mode.JSONPObject;
import com.miracle.mode.Statement;
import com.miracle.mode.jpa.Comm;
import com.miracle.mode.jpa.People;
import com.miracle.mode.jpa.PeopleGroup;
import com.miracle.mode.jpa.PresentWorship;
import com.miracle.mode.jpa.Worship;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.mode.vo.WorshipReportVO;
import com.miracle.service.ChildrenService;



@Controller
@RequestMapping("/children")
public class ChildrenController extends BaseController {

	@Autowired
	private ChildrenService childrenService;

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
	 * 查詢兒童基本資料
	 */
	@ResponseBody
	@RequestMapping(value = "/miracle/querychildren", method = RequestMethod.POST , headers="Accept=application/json" )
//	public Map<String, Object> queryChildrenData(
	public JSONPObject queryChildrenData(
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String peopleId = StringUtils.trimToEmpty(req.getParameter("peopleId"));
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			pageNumber="0";//首頁進來
		}
		String pageSize1 = StringUtils.trimToEmpty(req.getParameter("pageSize"));//總數
		if(pageSize1 == null || pageSize1.equals("")){
			pageSize1="9";//首頁進來
		}
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		PeopleVO peopleVO = new PeopleVO();
		List<Contact> contactList = new ArrayList<Contact>();
		CareTime careTime = new CareTime();
		
		try {
			
			//查詢個人及牧區資料
			peopleVO = childrenService.queryPeopleData(peopleId);
			
			//查詢䏈絡資料
			contactList = childrenService.queryContact(peopleId);
			
			//查詢關懷時間
			careTime = childrenService.queryCareTime(peopleId);
			
			int page = Integer.parseInt(pageNumber); //目前的页号
			int pageSize = Integer.parseInt(pageSize1); //每页数据条数
			String sortString = "";//如果你想排序的话逗号分隔可以排序多列->name.asc
			PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
			
			//崇拜報到
			List<PresentWorshipVO> presentWorshipList = childrenService.queryPresentWorship(peopleId, pageBounds);
			
			//获得结果集条总数
			PageList<PresentWorshipVO> pageList = (PageList<PresentWorshipVO>)presentWorshipList;
			int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
			model.addAttribute("pageNumber", pageNumber);
			model.addAttribute("pageTotal", pageTotal);
			 
			jsonMap.put("peopleVO", peopleVO);
			jsonMap.put("contactList", contactList);
			jsonMap.put("careTime", careTime);
			jsonMap.put("presentWorshipList", presentWorshipList);
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
//		return jsonMap;
		return new JSONPObject(callback,jsonMap);
	}
	
	/** 
	 * 查詢分頁崇拜資料
	 */
	@ResponseBody
	@RequestMapping(value = "/miracle/querypresentworship", method = RequestMethod.POST , headers="Accept=application/json" )
	public JSONPObject queryPresentWorship(
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String peopleId = StringUtils.trimToEmpty(req.getParameter("peopleId"));
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			pageNumber="0";//首頁進來
		}
		String pageSize1 = StringUtils.trimToEmpty(req.getParameter("pageSize"));//總數
		if(pageSize1 == null || pageSize1.equals("")){
			pageSize1="15";//首頁進來
		}
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			int page = Integer.parseInt(pageNumber); //目前的页号
			int pageSize = Integer.parseInt(pageSize1); //每页数据条数
			String sortString = "";//如果你想排序的话逗号分隔可以排序多列->name.asc
			PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
			
			//崇拜報到
			List<PresentWorshipVO> presentWorshipList = childrenService.queryPresentWorship(peopleId, pageBounds);
			
			//获得结果集条总数
			PageList<PresentWorshipVO> pageList = (PageList<PresentWorshipVO>)presentWorshipList;
			int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
			model.addAttribute("pageNumber", pageNumber);
			model.addAttribute("pageTotal", pageTotal);
			 
			jsonMap.put("presentWorshipList", presentWorshipList);
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查詢成長記錄
	 */
	@ResponseBody
	@RequestMapping(value = "/miracle/querystatement", method = RequestMethod.POST , headers="Accept=application/json" )
	public JSONPObject queryStatement (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String peopleId = StringUtils.trimToEmpty(req.getParameter("peopleId"));
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			pageNumber="0";//首頁進來
		}
		String pageSize1 = StringUtils.trimToEmpty(req.getParameter("pageSize"));//總數
		if(pageSize1 == null || pageSize1.equals("")){
			pageSize1="15";//首頁進來
		}
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			int page = Integer.parseInt(pageNumber); //目前的页号
			int pageSize = Integer.parseInt(pageSize1); //每页数据条数
			String sortString = "";//如果你想排序的话逗号分隔可以排序多列->name.asc
			PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
			
			//崇拜報到
			List<Statement> statementList = childrenService.queryStatementAll(peopleId, pageBounds);
			
			//获得结果集条总数
			PageList<Statement> pageList = (PageList<Statement>)statementList;
			int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
			model.addAttribute("pageNumber", pageNumber);
			model.addAttribute("pageTotal", pageTotal);
			 
			jsonMap.put("statementList", statementList);
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 點名報到
	 * pid   People ID
	 * cid   Charch Id
	 */
	@ResponseBody
	@RequestMapping(value = "/callroll", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject callRoll (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pid = StringUtils.trimToEmpty(req.getParameter("pid"));
		String cid = StringUtils.trimToEmpty(req.getParameter("cid"));
//		String worship = StringUtils.trimToEmpty(req.getParameter("worship"));
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		String worship = ""; //那一堂
		
		try {
			
			//孩子個人資料
			People people = childrenService.queryPeopleById(pid);
			
			//查詢那一堂，依星期和時間查詢
			worship = childrenService.queryWorshipIdByKey(pid);
			
			if(StringUtils.isNotBlank(worship)){
			
				PresentWorship presentWorship = new PresentWorship();
				presentWorship.setId(timeMachine.newRandomUUID());
				presentWorship.setPid(pid);
				presentWorship.setCid(cid);
				presentWorship.setActivityId(worship);
				
				//判斷是否報到過
				String id = childrenService.queryPresentWorshipByKey(presentWorship);
				if(StringUtils.isBlank(id)){
					//第一次報到
					childrenService.createPresentWorship(presentWorship);
				}else{
					//重覆報到
					Boolean isCorrect = childrenService.updatePresentWorshipById(id);
				}
				
				jsonMap.put("people", people);
				jsonMap.put("status", 0);
			
			}else{
				jsonMap.put("people", null);
				jsonMap.put("status", 0);
				jsonMap.put("msg", "未到打卡時間！");
			}
        
		} catch (Exception e) {
			jsonMap.put("status", -1);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 點名報到 - 登出
	 */
	@ResponseBody
	@RequestMapping(value = "/callrollchkout", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject callRollChkout (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pid = StringUtils.trimToEmpty(req.getParameter("pid"));
		String cid = StringUtils.trimToEmpty(req.getParameter("cid"));
		String worship = StringUtils.trimToEmpty(req.getParameter("worship"));
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		String result = "";
		
		try {
			
			Boolean isCorrect = childrenService.updatePresentWorshipChkoutById(pid, cid, worship);
			if(isCorrect){
				result = "登出成功";
			}else{
				result = "登出失敗";
			}
			
			jsonMap.put("msg", result);
			jsonMap.put("status", 0);
        
		} catch (Exception e) {
			jsonMap.put("status", -1);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	

	/** 
	 * 新增兒童基本資料
	 */
	/*@ResponseBody
	@RequestMapping(value = "/savechildrendata", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public Map<String, Object> saveChildrenData(Model model, HttpServletRequest req,  HttpServletResponse res,  HttpSession session ) throws Exception{
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
//		List<ShopMemDataVO> shopDataList = new ArrayList<ShopMemDataVO>();
		ArrayList<String> keyWordList = new ArrayList<String>();
		
		//個人資料
		String name = StringUtils.trimToEmpty(req.getParameter("name"));
		String gender = StringUtils.trimToEmpty(req.getParameter("gender"));
		String birthday = StringUtils.trimToEmpty(req.getParameter("birthday"));
		String comm = StringUtils.trimToEmpty(req.getParameter("comm"));
		String group = StringUtils.trimToEmpty(req.getParameter("group"));
		String note = StringUtils.trimToEmpty(req.getParameter("note"));
		
		//牧區資料
		String school = StringUtils.trimToEmpty(req.getParameter("school"));
		String grade = StringUtils.trimToEmpty(req.getParameter("grade"));
		
		
		
				
		try {
			
//			shopDataList = orderTakerService.queryShopAllDataByKeyWord(keyWordList, pageBounds);
			
//			jsonMap.put("shopDataList", shopDataList);
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return jsonMap;
	}*/
	
	
	/** 
	 * 匯入EXCEL
	 */
	@ResponseBody
	@RequestMapping(value = "/exportexl", method = RequestMethod.POST , headers="Accept=application/json" )
	public Map<String, Object> exportExl(Model model, HttpServletRequest req,  HttpServletResponse res,  HttpSession session ) throws Exception{
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
				
		try {
			
			childrenService.excelImport();
//			jsonMap.put("shopDataList", shopDataList);
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return jsonMap;
	}
	
	
	/** 
	 * 查詢兒童資料 - 分頁
	 */
	@ResponseBody
	@RequestMapping(value = "/sign/querychildrenall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryChildrenDataAll(
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String grade = StringUtils.trimToEmpty(req.getParameter("grade"));
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			pageNumber="0";//首頁進來
		}
		
		String pageSize1 = StringUtils.trimToEmpty(req.getParameter("pageSize"));
		if(StringUtils.isBlank(pageSize1)){
			pageSize1 = "10";
		}
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			int pageIndex = Integer.parseInt(pageNumber); //第幾頁 - 從1開始 0會報錯
			int pageSize = Integer.parseInt(pageSize1);//每頁幾筆
			int page = (pageIndex-1)*pageSize;
			
			Sort sort = new Sort (Direction.DESC, "createTime");
			Pageable pageable = new PageRequest(pageIndex, pageSize, sort);
			
			Page<People> peopleList = null;
			//查詢所有
			if(StringUtils.isNotBlank(grade)){
				//依年級查詢
				peopleList = childrenService.queryPeopleDataAllByGrade(grade, pageable);
			}else{
				peopleList = childrenService.queryPeopleDataAll(pageable);
			}
			jsonMap.put("dataList",peopleList.getContent());
			
			jsonMap.put("pageNumber", pageNumber);
			jsonMap.put("pageTotal", peopleList.getTotalPages());
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查詢所有崇拜堂數
	 */
	@ResponseBody
	@RequestMapping(value = "/sign/queryworshipall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryWorshipAll(
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			//查詢所有
			List<Worship> worshipList = childrenService.queryWorshipAll();
			jsonMap.put("dataList",worshipList);
			
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查詢所有崇拜 - 依時間或worshId查詢
	 */
	@ResponseBody
	@RequestMapping(value = "/sign/querypresentworshipall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryPresentWorshipAll(
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String beginTime = StringUtils.trimToEmpty(req.getParameter("beginTime"));
		String endTime = StringUtils.trimToEmpty(req.getParameter("endTime"));
		String worshId = StringUtils.trimToEmpty(req.getParameter("worshId"));

		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			//查詢所有
			List<PresentWorshipVO> presentWorshipVOList = childrenService.queryPresentWorshipAll(beginTime, endTime, worshId);
			jsonMap.put("dataList",presentWorshipVOList);
			
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	/** 
	 * 查詢報表
	 */
	@ResponseBody
	@RequestMapping(value = "/sign/queryworshiprepotall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public JSONPObject queryWorshipRepotAll(
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String beginTime = StringUtils.trimToEmpty(req.getParameter("beginTime"));
		String endTime = StringUtils.trimToEmpty(req.getParameter("endTime"));
		String worshId = StringUtils.trimToEmpty(req.getParameter("worshId"));
//		String filter = StringUtils.trimToEmpty(req.getParameter("filter"));
//		String count = StringUtils.trimToEmpty(req.getParameter("count"));

		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			
			List<WorshipReportVO> worshopReportList = childrenService.queryWorshipReportAll(beginTime, endTime, worshId);
			jsonMap.put("worshopReportList", worshopReportList);
			
			//查詢所有
//			List<PresentWorshipVO> presentWorshipVOList = childrenService.queryPresentWorshipAll(beginTime, endTime, worshId);
//			jsonMap.put("dataList",presentWorshipVOList);
			
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return new JSONPObject(callback,jsonMap);
	}
	
	
	
	
//--查詢崇拜報到資料-------------------------------------------------------------------------------
	
	/** 
	 * 查詢崇拜報到資料
	 */
	@RequestMapping(value = "/sign/querypresentworshipcheckinall", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public String queryPresentWorshipCheckInAll(
			Model model, HttpServletRequest req, 
			@ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("msg") String msg,
			@ModelAttribute("selectType") String selectType1,
			@ModelAttribute("beginTime") String beginTime1,
			@ModelAttribute("endTime") String endTime1,
			@ModelAttribute("worshId") String worshId1,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
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
		
		String beginTime = StringUtils.trimToEmpty(req.getParameter("beginTime"));
		if(beginTime == null || beginTime.equals("")){
			if(beginTime1 != null && !beginTime1.equals("")){
				beginTime=beginTime1;
			}else{
				beginTime="";//首頁進來
			}
		}
		
		String endTime = StringUtils.trimToEmpty(req.getParameter("endTime"));
		if(endTime == null || endTime.equals("")){
			if(endTime1 != null && !endTime1.equals("")){
				endTime=endTime1;
			}else{
				endTime="";//首頁進來
			}
		}
		
		String worshId = StringUtils.trimToEmpty(req.getParameter("worshId"));
		if(worshId == null || worshId.equals("")){
			if(worshId1 != null && !worshId1.equals("")){
				worshId=worshId1;
			}else{
				worshId="";//首頁進來
			}
		}
		
		model.addAttribute("pageNumber", pageNumber);
	    model.addAttribute("msg", msg);
		
	    int page = Integer.parseInt(pageNumber); //目前的??
		int pageSize = 7; //每??据??
		String sortString = "";//如果你想排序的?逗?分隔可以排序多列->name.asc
		PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
		
		List<PresentWorshipVO> presentWorshipVOList = null;
		/*if(StringUtils.isNotBlank(selectType) && selectType.equals("1")){
			if(StringUtils.isBlank(collegeId) && StringUtils.isBlank(collegeName)
					&& StringUtils.isBlank(activityId)){
				
				campActivitySignupVOList = collegeService.queryCampActivitySignupAll(pageBounds);
			
			}else {
				
				campActivitySignupVOList = collegeService.queryCampActivitySignupAllByKey(activityId, collegeId, collegeName, pageBounds);
			}
			
		}else{
			
			//查詢所有資料
			campActivitySignupVOList = collegeService.queryCampActivitySignupAll(pageBounds);
		}*/
		
		presentWorshipVOList = childrenService.queryPresentWorshipAllPage(pageBounds, beginTime, endTime, worshId);
		
		//查詢所有資料
		PageList<PresentWorshipVO> pageList = (PageList<PresentWorshipVO>)presentWorshipVOList;
		int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
		model.addAttribute("presentWorshipVOList", presentWorshipVOList);
		
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", pageTotal);
		
		model.addAttribute("msg", msg);
		
		
		return "presentworshipcheckin/queryPresentWorshipCheckInAll";
	}
	
	
	//小組功能設定首頁
	@RequestMapping(value = "/sign/querypeoplegroup", method = {RequestMethod.GET, RequestMethod.POST})
	public String queryPeopleGroup(Model model, @ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("msg") String msg,
			HttpServletRequest req, HttpSession s)  throws Exception {
	
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			if(pageNumber1 != null && !pageNumber1.equals("")){
				pageNumber=pageNumber1;//修改頁面而來
			}else{
				pageNumber="0";//首頁進來
			}
		}
		
		int pageIndex = Integer.parseInt(pageNumber); //第幾頁 - 從1開始 0會報錯
		int pageSize = 7;//每頁幾筆
		int page = (pageIndex-1)*pageSize;
		
//				Sort sort = new Sort (Direction.ASC, "sort");
		Pageable pageable = new PageRequest(pageIndex, pageSize);
		
		//查詢所有資料
		Page<PeopleGroup> peopleGroupList = childrenService.queryPeopleGroupAllPage(pageable);
		
		model.addAttribute(peopleGroupList.getContent());
		
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", peopleGroupList.getTotalPages());
		
		model.addAttribute("msg", msg);
		
		return "peoplegroup/queryPeopleGroup";
	}
	
	
	//新增小組功能設定設定
	@RequestMapping(value = "/sign/addpeoplegroup", method = RequestMethod.GET)
	public String addPeopleGroup(Model model,
			@ModelAttribute("msg") String msg, @ModelAttribute("pageNumber") String pageNumber,
			HttpServletRequest req, HttpSession s)  throws Exception {
		
		
		 model.addAttribute("pageNumber", pageNumber);
	     model.addAttribute("msg", msg);
		
		return "peoplegroup/addPeopleGroup";
	}
	
	
	//小組功能設定- 新增
	@RequestMapping(value = "/sign/createpeoplegroup", method = RequestMethod.POST )
	public String createPeopleGroup( 
			@ModelAttribute PeopleGroup peopleGroup,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String resultValue = "";
		try {
			
			peopleGroup.setId(timeMachine.newRandomUUID());
			Boolean isCorrect = childrenService.createPeopleGroup(peopleGroup);
			
			if(isCorrect){
				resultValue="新增成功";
				
			}else{
				resultValue="新增失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addFlashAttribute("msg", resultValue); 
		
		
		return "redirect:/children/sign/querypeoplegroup";
	}
	
	
	//小組功能設定- 修改頁面
	@RequestMapping(value = "/sign/editpeoplegroup", method = {RequestMethod.POST, RequestMethod.GET})
	public String editPeopleGroup(@ModelAttribute("id") String id1, @ModelAttribute("msg") String msg,
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
		PeopleGroup peopleGroup = childrenService.queryPeopleGroup(id);
		
		model.addAttribute("msg", msg);
		model.addAttribute("peopleGroup", peopleGroup);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("id", id);
		
		
		return "peoplegroup/editPeopleGroup";
	}
	
	
	//小組功能設定 - 修改
	@RequestMapping(value = "/sign/updatepeoplegroup", method = RequestMethod.POST )
	public String updatePeopleGroup(
			@ModelAttribute PeopleGroup peopleGroup,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));
		
		String resultValue = "";
		
		try {
			
			//修改
			Boolean isCorrect = childrenService.createPeopleGroup(peopleGroup);
			
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
		
		
		return "redirect:/children/sign/querypeoplegroup";
	}
	
	
	//刪除小組功能設定
	@RequestMapping(value = "/sign/deletepeoplegroup", method = RequestMethod.POST )
	public String deletePeopleGroup( @RequestParam String id,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		String resultValue = "";
		
		try {
			
			//刪除
			Boolean isCorrect = childrenService.deletePeopleGroup(id);
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
		
		return "redirect:/children/sign/querypeoplegroup";
	}
	
	
	/** 
	 * 查詢崇拜主檔
	 */
	@RequestMapping(value = "/sign/queryworshipdata", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public String queryWorshipData(
			Model model, HttpServletRequest req, 
			@ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("msg") String msg,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			if(pageNumber1 != null && !pageNumber1.equals("")){
				pageNumber=pageNumber1;//修改頁面而來
			}else{
				pageNumber="0";//首頁進來
			}
		}
		
		int pageIndex = Integer.parseInt(pageNumber); //第幾頁 - 從1開始 0會報錯
		int pageSize = 7;//每頁幾筆
		int page = (pageIndex-1)*pageSize;
		
//				Sort sort = new Sort (Direction.ASC, "sort");
		Pageable pageable = new PageRequest(pageIndex, pageSize);
		
		//查詢所有資料
		Page<Worship> worshipList = childrenService.queryWorshipAllPage(pageable);
		
		model.addAttribute(worshipList.getContent());
		
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", worshipList.getTotalPages());
		
		model.addAttribute("msg", msg);
		
		return "worship/queryWorship";
	}
	
	
	//新增崇拜設定
	@RequestMapping(value = "/sign/addworship", method = RequestMethod.GET)
	public String addWorship(Model model,
			@ModelAttribute("msg") String msg, @ModelAttribute("pageNumber") String pageNumber,
			HttpServletRequest req, HttpSession s)  throws Exception {
		
		
		 model.addAttribute("pageNumber", pageNumber);
	     model.addAttribute("msg", msg);
	     
		
		return "worship/addWorship";
	}
	
	
	//崇拜設定- 新增
	@RequestMapping(value = "/sign/createworship", method = RequestMethod.POST )
	public String createWorship( 
			@ModelAttribute Worship worship,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String resultValue = "";
		try {
			
			worship.setId(timeMachine.newRandomUUID());
			Boolean isCorrect = childrenService.createWorship(worship);
			
			if(isCorrect){
				resultValue="新增成功";
				
			}else{
				resultValue="新增失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addFlashAttribute("msg", resultValue); 
		
		
		return "redirect:/children/sign/queryworshipdata";
	}
	
	
	//崇拜設定- 修改頁面
	@RequestMapping(value = "/sign/editworship", method = {RequestMethod.POST, RequestMethod.GET})
	public String editWorship(@ModelAttribute("id") String id1, @ModelAttribute("msg") String msg,
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
		Worship worship = childrenService.queryWorship(id);
		
		model.addAttribute("msg", msg);
		model.addAttribute("worship", worship);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("id", id);
		
		
		return "worship/editWorship";
	}
	
	
	//崇拜設定 - 修改
	@RequestMapping(value = "/sign/updateworship", method = RequestMethod.POST )
	public String updateWorship(
			@ModelAttribute Worship worship,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));
		
		String resultValue = "";
		
		try {
			
			//修改
			Boolean isCorrect = childrenService.createWorship(worship);
			
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
		
		
		return "redirect:/children/sign/queryworshipdata";
	}
	
	
	//刪除崇拜設定
	@RequestMapping(value = "/sign/deleteworship", method = RequestMethod.POST )
	public String deleteWorship( @RequestParam String id,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		String resultValue = "";
		
		try {
			
			//刪除
			Boolean isCorrect = childrenService.deleteWorship(id);
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
		
		return "redirect:/children/sign/queryworshipdata";
	}
	
	
	//牧區設定首頁
	@RequestMapping(value = "/sign/querycomm", method = {RequestMethod.GET, RequestMethod.POST})
	public String queryComm(Model model, @ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("msg") String msg,
			HttpServletRequest req, HttpSession s)  throws Exception {
	
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			if(pageNumber1 != null && !pageNumber1.equals("")){
				pageNumber=pageNumber1;//修改頁面而來
			}else{
				pageNumber="0";//首頁進來
			}
		}
		
		int pageIndex = Integer.parseInt(pageNumber); //第幾頁 - 從1開始 0會報錯
		int pageSize = 7;//每頁幾筆
		int page = (pageIndex-1)*pageSize;
		
//					Sort sort = new Sort (Direction.ASC, "sort");
		Pageable pageable = new PageRequest(pageIndex, pageSize);
		
		//查詢所有資料
		Page<Comm> commList = childrenService.queryCommAllPage(pageable);
		
		model.addAttribute(commList.getContent());
		
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", commList.getTotalPages());
		
		model.addAttribute("msg", msg);
		
		return "comm/queryComm";
	}
	
	
	//新增牧區功能設定設定
	@RequestMapping(value = "/sign/addcomm", method = RequestMethod.GET)
	public String addComm(Model model,
			@ModelAttribute("msg") String msg, @ModelAttribute("pageNumber") String pageNumber,
			HttpServletRequest req, HttpSession s)  throws Exception {
		
		
		 model.addAttribute("pageNumber", pageNumber);
	     model.addAttribute("msg", msg);
		
		return "comm/addComm";
	}
	
	
	//牧區功能設定- 新增
	@RequestMapping(value = "/sign/createcomm", method = RequestMethod.POST )
	public String createComm( 
			@ModelAttribute Comm comm,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String resultValue = "";
		try {
			
			comm.setId(timeMachine.newRandomUUID());
			Boolean isCorrect = childrenService.createComm(comm);
			
			if(isCorrect){
				resultValue="新增成功";
				
			}else{
				resultValue="新增失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addFlashAttribute("msg", resultValue); 
		
		
		return "redirect:/children/sign/querycomm";
	}
	
	
	//牧區功能設定- 修改頁面
	@RequestMapping(value = "/sign/editcomm", method = {RequestMethod.POST, RequestMethod.GET})
	public String editComm(@ModelAttribute("id") String id1, @ModelAttribute("msg") String msg,
			@ModelAttribute("pageNumber") String pageNumber1,
			Model model, HttpServletRequest req, HttpSession s )  throws Exception {
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(StringUtils.isNotBlank(pageNumber1)){
			pageNumber = pageNumber1;
		}
		
		String id = StringUtils.trimToEmpty(req.getParameter("id"));
		if(StringUtils.isNotBlank(id1)){
			id = id1;
		}
		
		//查詢
		Comm comm = childrenService.queryComm(id);
		
		model.addAttribute("msg", msg);
		model.addAttribute("comm", comm);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("id", id);
		
		
		return "comm/editComm";
	}
	
	
	//牧區功能設定 - 修改
	@RequestMapping(value = "/sign/updatecomm", method = RequestMethod.POST )
	public String updateComm(
			@ModelAttribute Comm comm,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));
		
		String resultValue = "";
		
		try {
			
			//修改
			Boolean isCorrect = childrenService.createComm(comm);
			
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
		
		
		return "redirect:/children/sign/querycomm";
	}
	
	
	//刪除牧區功能設定
	@RequestMapping(value = "/sign/deletecomm", method = RequestMethod.POST )
	public String deleteComm( @RequestParam String id,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		String resultValue = "";
		
		try {
			
			//刪除
			Boolean isCorrect = childrenService.deleteComm(id);
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
		
		return "redirect:/children/sign/querycomm";
	}
	
	/** 
	 * 個人資料主檔
	 */
	@RequestMapping(value = "/sign/querypeople", method = {RequestMethod.POST, RequestMethod.GET} , headers="Accept=application/json" )
	public String queryPeople(
			Model model, HttpServletRequest req, 
			@ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("selectType") String selectType1,
			@ModelAttribute("name") String name1,
			@ModelAttribute("msg") String msg,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
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
		
		String name = StringUtils.trimToEmpty(req.getParameter("name"));
		if(name == null || name.equals("")){
			if(name1 != null && !name1.equals("")){
				name=name1;
			}else{
				name="";//首頁進來
			}
		}
		
		//查詢所有資料
//		Page<People> peopleList = childrenService.queryPeopleAllPage(pageable);
		
		int page = Integer.parseInt(pageNumber); //目前的页号
		int pageSize = 7; //每页数据条数
		String sortString = "";//如果你想排序的话逗号分隔可以排序多列->name.asc
		PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
		
		//查詢所有
		List<PeopleVO> peopleVOList = null;
		if(StringUtils.isNotBlank(selectType) && selectType.equals("1")){
			if(StringUtils.isNotBlank(name)){
				//查詢資料
				peopleVOList = childrenService.queryPeopleAllPageByName(pageBounds, name);
			}else{
				
				peopleVOList = childrenService.queryPeopleAllPage(pageBounds);
			}
		}else{
			
			peopleVOList = childrenService.queryPeopleAllPage(pageBounds);
		}
		
		PageList<PeopleVO> pageList = (PageList<PeopleVO>)peopleVOList;
		int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
		
		model.addAttribute("peopleVOList", peopleVOList);
		model.addAttribute("pageTotal", pageTotal);
		
		model.addAttribute("name", name);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("msg", msg);
		
		return "people/queryPeople";
	}
	
	
	//新增個人資料設定
	@RequestMapping(value = "/sign/addpeople", method = RequestMethod.GET)
	public String addPeople(Model model,
			@ModelAttribute("msg") String msg, @ModelAttribute("pageNumber") String pageNumber,
			HttpServletRequest req, HttpSession s)  throws Exception {
		
		String selectType = StringUtils.trimToEmpty(req.getParameter("selectType"));
		String nameParent = StringUtils.trimToEmpty(req.getParameter("nameParent"));
		
		//查所有牧區
		List<Comm> commList = childrenService.queryCommAll();
		model.addAttribute("commList", commList);
		
		//查所有群組
		List<PeopleGroup> peopleGroupList = childrenService.queryPeopleGroupAll();
		model.addAttribute("peopleGroupList", peopleGroupList);
		
		//查所有崇拜
		List<Worship> worshipList = childrenService.queryWorshipAll();
		model.addAttribute("worshipList", worshipList);
		
		model.addAttribute("selectType", selectType);
		model.addAttribute("nameParent", nameParent);
		model.addAttribute("pageNumber", pageNumber);
	    model.addAttribute("msg", msg);
	     
		
		return "people/addPeople";
	}
	
	
	//個人資料設定- 新增
	@RequestMapping(value = "/sign/createpeople", method = RequestMethod.POST )
	public String createPeople( 
			@ModelAttribute People people,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String selectType = StringUtils.trimToEmpty(req.getParameter("selectType"));
		String nameParent = StringUtils.trimToEmpty(req.getParameter("nameParent"));
		
		String resultValue = "";
		try {
			
			people.setId(timeMachine.newRandomUUID());
			people.setCreateTime(timeMachine.dateFormat(new Date()));
			Boolean isCorrect = childrenService.createPeople(people);
			
			if(isCorrect){
				resultValue="新增成功";
				
			}else{
				resultValue="新增失敗";
			}
			
		} catch (Exception e) {
			resultValue = "Message:"+e.getMessage();
		}
		
		attr.addAttribute("selectType", selectType);
		attr.addFlashAttribute("name", nameParent); 
		attr.addFlashAttribute("msg", resultValue); 
		
		return "redirect:/children/sign/querypeople";
	}
	
	//個人資料設定- 修改頁面
	@RequestMapping(value = "/sign/editpeople", method = {RequestMethod.POST, RequestMethod.GET})
	public String editPeople(@ModelAttribute("id") String id1, @ModelAttribute("msg") String msg,
			@ModelAttribute("pageNumber") String pageNumber1,
			@ModelAttribute("selectType") String selectType1,
			@ModelAttribute("nameParent") String nameParent1,
			Model model, HttpServletRequest req, HttpSession s )  throws Exception {
		
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(StringUtils.isNotBlank(pageNumber1)){
			pageNumber = pageNumber1;
		}
		
		String id = StringUtils.trimToEmpty(req.getParameter("id"));
		if(StringUtils.isNotBlank(id1)){
			id = id1;
		}
		
		String selectType = StringUtils.trimToEmpty(req.getParameter("selectType"));
		if(StringUtils.isNotBlank(selectType1)){
			selectType = selectType1;
		}
		
		String nameParent = StringUtils.trimToEmpty(req.getParameter("nameParent"));
		if(StringUtils.isNotBlank(nameParent1)){
			nameParent = nameParent1;
		}
		
		//查詢
		People people = childrenService.queryPeople(id);
		model.addAttribute("people", people);
		
		//查所有牧區
		List<Comm> commList = childrenService.queryCommAll();
		model.addAttribute("commList", commList);
		
		//查所有群組
		List<PeopleGroup> peopleGroupList = childrenService.queryPeopleGroupAll();
		model.addAttribute("peopleGroupList", peopleGroupList);
		
		//查所有崇拜
		List<Worship> worshipList = childrenService.queryWorshipAll();
		model.addAttribute("worshipList", worshipList);
		
		model.addAttribute("msg", msg);
		
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("id", id);
		model.addAttribute("selectType", selectType);
		model.addAttribute("nameParent", nameParent);
		
		return "people/editPeople";
	}
	
	
	//個人資料設定 - 修改
	@RequestMapping(value = "/sign/updatepeople", method = RequestMethod.POST )
	public String updatePeople(
			@ModelAttribute People people,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));
		String selectType = StringUtils.trimToEmpty(req.getParameter("selectType"));
		String nameParent = StringUtils.trimToEmpty(req.getParameter("nameParent"));
		
		String resultValue = "";
		
		try {
			
			//修改
			Boolean isCorrect = childrenService.createPeople(people);
			
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
		attr.addFlashAttribute("selectType", selectType);
		attr.addFlashAttribute("name", nameParent);
		
		
		return "redirect:/children/sign/querypeople";
	}
	
	
	//刪除個人資料設定
	@RequestMapping(value = "/sign/deletepeople", method = RequestMethod.POST )
	public String deletePeople( @RequestParam String id,
			RedirectAttributes attr, Model model, HttpServletRequest req, 
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		String selectType = StringUtils.trimToEmpty(req.getParameter("selectType"));
		String nameParent = StringUtils.trimToEmpty(req.getParameter("nameParent"));
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		String resultValue = "";
		
		try {
			
			//刪除
			Boolean isCorrect = childrenService.deletePeople(id);
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
		attr.addFlashAttribute("selectType", selectType);
		attr.addFlashAttribute("name", nameParent);
		
		return "redirect:/children/sign/querypeople";
	}
	

}