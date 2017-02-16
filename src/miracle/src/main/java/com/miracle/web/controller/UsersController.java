package com.miracle.web.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.miracle.common.SecretUtil;
import com.miracle.common.TimeMachine;
import com.miracle.common.Tools;
import com.miracle.mode.UsersRoleSetting;
import com.miracle.mode.vo.UsersVO;
import com.miracle.service.UsersService;



@Controller
@RequestMapping("/users")
public class UsersController extends BaseController {
	
	@Autowired
	private UsersService usersService;
	
	@Autowired
	private MessageSource lng;
	
	@Autowired
	private Tools tls;
	
	@Autowired
	private SecretUtil sert;

	
	//系統-人員登入設定首頁
	@RequestMapping(value = "/sign/queryusers", method = RequestMethod.GET)
	public String queryUsers(Model model,@ModelAttribute("msg") String msg, HttpServletRequest req, HttpSession s)  throws Exception {
	
		String pageNumber = StringUtils.trimToEmpty(req.getParameter("pageNumber"));//分頁點擊
		if(pageNumber == null || pageNumber.equals("")){
			pageNumber="0";//首頁進來
		}
		
		int page = Integer.parseInt(pageNumber); //目前的页号
		int pageSize = 7; //每页数据条数
		String sortString = "";//如果你想排序的话逗号分隔可以排序多列->name.asc
		PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
		
		List<UsersVO> usersList = usersService.queryUsersAll(pageBounds);
		
		//获得结果集条总数
		PageList<UsersVO> pageList = (PageList<UsersVO>)usersList;
		int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", pageTotal);
		
		model.addAttribute("usersList", usersList);
		model.addAttribute("msg", msg);
		model.addAttribute("active", "1");
		
		return "users/queryUsersAll";
	}
	
	
	//新增登入員
	@RequestMapping(value = "/sign/addusers", method = RequestMethod.GET)
	public String addUsers(Model model, HttpServletRequest req, HttpSession s)  throws Exception {
	
		//權限
		List<UsersRoleSetting> usersRoleSettingList = usersService.queryUsersRoleSettingAll();
		model.addAttribute("usersRoleSettingList", usersRoleSettingList);
		model.addAttribute("active", "1");
		return "users/addUsers";
	}
	
	
	//新增登入員
	@RequestMapping(value = "/sign/createusers", method = RequestMethod.POST)
	public String createUsers(Model model, RedirectAttributes attr, HttpServletRequest req, HttpSession s, Locale locale)  throws Exception {
	
		String username = StringUtils.trimToEmpty(req.getParameter("username"));
		String password = StringUtils.trimToEmpty(req.getParameter("password"));
		String confirmPassword = StringUtils.trimToEmpty(req.getParameter("confirmPassword"));
		String name = StringUtils.trimToEmpty(req.getParameter("name"));
		String role = StringUtils.trimToEmpty(req.getParameter("role"));
		
		//查詢權限資料
		UsersRoleSetting usersRoleSetting = usersService.queryUsersRoleSettingById(role);
		String roleName = usersRoleSetting.getRoleName();
		
		String strMsg = "";
		String strPage = "redirect:/users/sign/queryusers";
		boolean check = false;
//						Account lgAdminVO = (Account)s.getAttribute("loginVo");
//						String userId = lgAdminVO.getUserId();
		
		if( req.getMethod().equals("POST"))
		{
				boolean chkId = usersService.queryUsersChk(username);
				if(chkId){
					strMsg = lng.getMessage("MSG1022", null, locale);//帳號已存在
				}else if( !tls.chkReqValue(req,"username",4,30) ){
					strMsg = lng.getMessage("MSG0019", null, locale);//帳號長度有問題
				}/*else if( !tls.chkEngOrNum( req.getParameter("username") ) ){
					strMsg = lng.getMessage("MSG0077", null, locale);//帳號僅限英文及數字
				}*/else if( !tls.chkReqValue(req,"password",4,100) ){
					strMsg = lng.getMessage("MSG0020", null, locale);//密碼長度不正確		    
				}/*else if( !tls.chkEngOrNum( password ) ){
					strMsg = lng.getMessage("MSG0053", null, locale);//密碼僅限英文及數字			
				}*/else if( !password.equals(confirmPassword) ){
					strMsg = lng.getMessage("MSG0016", null, locale);//兩次輸入密碼未一致	
				}else if( password.equalsIgnoreCase(username) ){
					strMsg = lng.getMessage("MSG0062", null, locale);//帳號與密碼不可相同	
				}else{
					check = true;
				}
				
				if(check){
					
					//新增
					UsersVO users = new UsersVO();
					TimeMachine idtime = new TimeMachine();
					String id =  idtime.serial("user", 0);
					String id2 =  idtime.serial("rold", 0);
					users.setId(id);
					users.setUserRoldId(id2);
					users.setUsername(username);
					users.setPassword(sert.encrypt(password));
					users.setName(name);
					users.setRoleId(role);
					users.setRoleName(roleName);
					boolean isCorrect = usersService.createUsersData(users);
					
					if(isCorrect){
						strMsg = lng.getMessage("MSG0002", null, locale);//成功
						
					}else{
						strMsg = lng.getMessage("MSG0003", null, locale);//失敗
						
						model.addAttribute("username", username);
						model.addAttribute("name", name);
						model.addAttribute("role", role);
						
						//權限
						List<UsersRoleSetting> usersRoleSettingList = usersService.queryUsersRoleSettingAll();
						model.addAttribute("usersRoleSettingList", usersRoleSettingList);
						
						strPage = "users/addUsers";
					}

				}else{
					
					model.addAttribute("username", username);
					model.addAttribute("name", name);
					model.addAttribute("role", role);
					
					//權限
					List<UsersRoleSetting> usersRoleSettingList = usersService.queryUsersRoleSettingAll();
					model.addAttribute("usersRoleSettingList", usersRoleSettingList);
					
					strPage = "users/addUsers";
				}
		}	
			
		attr.addFlashAttribute("msg", strMsg); 
		model.addAttribute("msg", strMsg);//錯誤訊息	
		
		return strPage;
	}
	
	
	//修改登入員
	@RequestMapping(value = "/sign/editusers",  method = { RequestMethod.POST, RequestMethod.GET })
	public String editUsers(Model model, @ModelAttribute("id") String id1,
			@ModelAttribute("msg") String msg,
			HttpServletRequest req, HttpSession s)  throws Exception {
	
		String id = StringUtils.trimToEmpty(req.getParameter("id"));
		if(StringUtils.isBlank(id)){
			id = id1;
		}
		
		//權限
		List<UsersRoleSetting> usersRoleSettingList = usersService.queryUsersRoleSettingAll();
		model.addAttribute("usersRoleSettingList", usersRoleSettingList);
		
		//查尋登入員資料
		UsersVO usersVO = usersService.queryUsersById(id);
		//解密
		usersVO.setPassword(sert.decrypt(usersVO.getPassword()));
		
		model.addAttribute("usersVO", usersVO);
		model.addAttribute("msg", msg);
		model.addAttribute("active", "1");
		
		return "users/editUsers";
	}
	
	//修改儲存登入員
	@RequestMapping(value = "/sign/updatusers", method = RequestMethod.POST)
	public String updateUsers(Model model, HttpServletRequest req, HttpSession s, Locale locale, RedirectAttributes attr)  throws Exception {
	
		String id = StringUtils.trimToEmpty(req.getParameter("id"));
		String userRoldId = StringUtils.trimToEmpty(req.getParameter("userRoldId"));
		String username = StringUtils.trimToEmpty(req.getParameter("username"));
		String password = StringUtils.trimToEmpty(req.getParameter("password"));
		String confirmPassword = StringUtils.trimToEmpty(req.getParameter("confirmPassword"));
		String name = StringUtils.trimToEmpty(req.getParameter("name"));
		String role = StringUtils.trimToEmpty(req.getParameter("role"));
		
		//查詢權限資料
		UsersRoleSetting usersRoleSetting = usersService.queryUsersRoleSettingById(role);
		String roleName = usersRoleSetting.getRoleName();
		
		String strMsg = "";
		String strPage = "redirect:/users/sign/queryusers";
		boolean check = false;
		
		if( req.getMethod().equals("POST"))
		{
				/*boolean chkId = accountService.queryAccountChk(accountId);
				if(chkId){
					strMsg = lng.getMessage("MSG1022", null, locale);//帳號已存在
				}else*/ if( !tls.chkReqValue(req,"password",4,100) ){
					strMsg = lng.getMessage("MSG0020", null, locale);//密碼長度不正確		    
				}/*else if( !tls.chkEngOrNum( password ) ){
					strMsg = lng.getMessage("MSG0053", null, locale);//密碼僅限英文及數字			
				}*/else if( !password.equals(confirmPassword) ){
					strMsg = lng.getMessage("MSG0016", null, locale);//兩次輸入密碼未一致	
				}else if( password.equalsIgnoreCase(username) ){
					strMsg = lng.getMessage("MSG0062", null, locale);//帳號與密碼不可相同	
				}else{
					check = true;
				}
				
				if(check){
					
					//修改
					UsersVO users = new UsersVO();
					users.setId(id);
					users.setUserRoldId(userRoldId);//登入員權限表Id
					users.setUsername(username);
					users.setPassword(sert.encrypt(password));
					users.setName(name);
					users.setRoleId(role);
					users.setRoleName(roleName);
					boolean isCorrect = usersService.updateUsersData(users);
					
					if(isCorrect){
						strMsg = lng.getMessage("MSG0004", null, locale);//成功
						
					}else{
						strMsg = lng.getMessage("MSG0005", null, locale);//失敗
						
						attr.addFlashAttribute("id", id); 
						
						strPage = "redirect:/users/sign/editusers";
					}

				}else{
					
					attr.addFlashAttribute("id", id); 
					
					strPage = "redirect:/users/sign/editusers";
				}
		}	
			
		attr.addFlashAttribute("msg", strMsg); 
		model.addAttribute("msg", strMsg);//錯誤訊息	
		
		return strPage;
	}
	
	
	//刪除登入員
	@RequestMapping(value = "/sign/deleteusers", method = RequestMethod.POST)
	public String deleteUsers(Model model, RedirectAttributes attr,
			HttpServletRequest req, HttpSession s, Locale locale)  throws Exception {
		
		String delId = StringUtils.trimToEmpty(req.getParameter("delId"));
		String username = StringUtils.trimToEmpty(req.getParameter("username"));
		
		String ref = "";
		
		boolean isCorrect = usersService.deleteUsersData(delId, username);
		if(isCorrect){
			
			ref = lng.getMessage("delSuccess", null, locale);
		}else{
			
			ref = lng.getMessage("delError", null, locale);
		}
		
		attr.addFlashAttribute("msg", ref); 
		
		return "redirect:/users/sign/queryusers";
	}
	
}