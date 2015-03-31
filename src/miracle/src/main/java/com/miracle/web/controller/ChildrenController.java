package com.miracle.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
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
import com.miracle.common.Tools;
import com.miracle.mode.vo.PeopleVO;
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
	
	
	/** 
	 * 查詢兒童基本資料
	 */
	@ResponseBody
	@RequestMapping(value = "/querychildren", method = RequestMethod.POST , headers="Accept=application/json" )
	public Map<String, Object> queryChildrenData(
			Model model, HttpServletRequest req, 
			@RequestParam String peopleId,
			HttpServletResponse res,  HttpSession session ) throws Exception{
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		PeopleVO peopleVO = new PeopleVO();	
		try {
			
			//查詢個人及牧區資料
			peopleVO = childrenService.queryPeopleData(peopleId);
			
			jsonMap.put("peopleVO", peopleVO);
			jsonMap.put("status", "OK");
        
		} catch (Exception e) {
			jsonMap.put("status", "ERR");
			jsonMap.put("code", -100);
			jsonMap.put("desc", "Message:"+e.getMessage());
		}
		
		return jsonMap;
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
	
	
	

}