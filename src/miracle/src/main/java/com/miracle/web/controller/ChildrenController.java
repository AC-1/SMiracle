package com.miracle.web.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
import com.miracle.mode.People;
import com.miracle.mode.PresentWorship;
import com.miracle.mode.Statement;
import com.miracle.mode.Worship;
import com.miracle.mode.vo.PeopleVO;
import com.miracle.mode.vo.PresentWorshipVO;
import com.miracle.mode.vo.WorshipReportVO;
import com.miracle.mode.vo.WorshipVO;
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
			@RequestParam String peopleId,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
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
			@RequestParam String peopleId,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
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
			@RequestParam String peopleId,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
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
	@RequestMapping(value = "/callroll", method = RequestMethod.POST , headers="Accept=application/json" )
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
	@RequestMapping(value = "/callrollchkout", method = RequestMethod.POST , headers="Accept=application/json" )
	public JSONPObject callRollChkout (
			@RequestParam(required=false) String callback,
			Model model, HttpServletRequest req, 
			@RequestParam String pid, @RequestParam String cid,
			@RequestParam String worship,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
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
	@ResponseBody
	@RequestMapping(value = "/savechildrendata", method = RequestMethod.POST , headers="Accept=application/json" )
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
	}
	
	
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
		String filter = StringUtils.trimToEmpty(req.getParameter("filter"));
		String count = StringUtils.trimToEmpty(req.getParameter("count"));

		
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
	
	
	

}