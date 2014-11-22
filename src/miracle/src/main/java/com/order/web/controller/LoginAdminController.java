package com.order.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.order.mode.Account;
import com.order.service.LoginService;
import com.order.util.JSONUtils;
import com.order.util.Language;
import com.order.util.SecretUtil;
import com.order.util.SysParameterUtil;
import com.order.util.Tools;



@Controller
@RequestMapping("/loginadmin")
public class LoginAdminController extends BaseController {

	@Autowired
	private LoginService loginService;

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
	
	

//	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	private static final int IntHours = 1;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model, HttpSession session)
			throws HttpSessionRequiredException {


		return "redirect:/loginadmin/login";
	}
	
	
	
	//檢查使用者是否需重新輸入帳密
	@RequestMapping(value = "/login",  method = {RequestMethod.GET, RequestMethod.POST})
	public String loginShopAdmin(Model model, HttpSession s,
			HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String strUserId = "";
		String strPassword = "";
		Account vo = null;	
		String strPage = "loginadmin/loginShopAdmin";//記錄需跳轉到那一個頁面
		Tools tls = new Tools();
		
		if( s.getAttribute("loginVo") != null){	
		   try {
			    vo = (Account)s.getAttribute("loginVo");
			
			    strUserId = vo.getUserId();
			    strPassword = vo.getUserPw();
			    
			    vo = loginService.queryUser(strUserId, sert.decrypt(strPassword)); //查詢登入資料
			
			    if( vo != null){//若為null代表此帳號可能已被另一人更改
				   
				   s.setMaxInactiveInterval(60 * 60 * IntHours);
				   s.setAttribute("loginVo",vo);//重新寫入session
				   
				   //設定登入Session
				   s.setAttribute("loginHomeSession", "loginHomeSession");
				   s.setMaxInactiveInterval(60 * 60 * IntHours);
				   
				   strPage = "loginadmin/shopAdminIndex";
				   
			   } else {//帳號可能已由另一人更改，故須移除session及cookie
				   s.removeAttribute("loginVo");
				   tls.removeCookie(res, req, "UserId");
				   tls.removeCookie(res, req, "Password");
				   //移除登入Session
				   s.removeAttribute("loginHomeSession");
			   }
		   } catch(Exception e){
			   log.error("loginShopAdmin:"+e.getMessage());
		   }
		   
		} else {
			
			try {		
			     vo = new Account();
			
			     strUserId = tls.getCookie(req, "UserId");
			     strPassword = tls.getCookie(req, "Password");	
			
			     if( strUserId != "" && strPassword != "" && strUserId.length() > 0 && strPassword.length() > 0 ){				
				    vo = loginService.queryUser(strUserId, sert.decrypt(strPassword));
				
				    //若vo = null代表帳號或密碼有誤，因這時值是由cookie取得，代表帳密有所變動，所以須將cookie中的值移除，以免網頁不停reload
				    if(vo == null){
					   tls.removeCookie(res, req, "UserId");
					   tls.removeCookie(res, req, "Password");
					   //移除登入Session
					   s.removeAttribute("loginHomeSession");
					   model.addAttribute("msg", lng.getStr("MSG0010"));
					   strPage = "loginadmin/loginShopAdmin";
						
					   return strPage;
				    } else {	
					   
					   s.setMaxInactiveInterval(60 * 60 * IntHours);
					   s.setAttribute("loginVo", vo);//寫入session
					   
					   //設定登入Session
					   s.setAttribute("loginHomeSession", "loginHomeSession");
					   s.setMaxInactiveInterval(60 * 60 * IntHours);
					   
					   strPage = "loginadmin/shopAdminIndex";
				     }
			     } else {
			    	 strPage = "loginadmin/loginShopAdmin";
			     }
			} catch(Exception e){
				log.error("loginShopAdmin:"+e.getMessage());
			}
		}
		
		return strPage;
	}
	
	
	//檢查帳密是否正確
	@RequestMapping(value = "/home", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginShopCheck(@ModelAttribute("userId") String userId,
			@ModelAttribute("password") String password, @ModelAttribute("chkRememberMe") String chkRememberMe,
			Model model, HttpSession s,
			HttpServletRequest req, HttpServletResponse res) throws HttpSessionRequiredException,
			Exception {
		
        log.info("home");

		Tools tls = new Tools();
		Account vo = new Account();
		String strPage = "loginadmin/loginShopAdmin";// 指定要導到那個頁面
		
		//沒登入Session，導回登入頁面
		if(s.getAttribute("loginHomeSession") == null ){
			strPage = "loginadmin/loginShopAdmin";
			return strPage;
		}
		
		if (s.getAttribute("loginVo") == null) {// 之所以檢查session是為防止使用者於網址列重新按下enter
//				if( req.getMethod().equals("POST") ){
				
				if (tls.chkEngOrNum(userId) && tls.chkEngOrNum(password)
						&& !tls.chkReqValue(req, userId, 4, 30)
						&& !tls.chkReqValue(req, password, 4, 30)) {

					vo = loginService.queryUser(userId, password); //查詢資料
					// 若vo = null代表帳號或密碼有誤
					if (vo == null) {
						//移除Cookie
						tls.removeCookie(res, req, "UserId");
						tls.removeCookie(res, req, "Password");
						//移除登入Session
						s.removeAttribute("loginHomeSession");
						model.addAttribute("msg", lng.getStr("MSG0010"));
						strPage = "loginadmin/loginShopAdmin";
						return strPage;
					} else {

						s.setMaxInactiveInterval(60 * 60 * IntHours);
						s.setAttribute("loginVo", vo);//重新寫入session
						
						if( StringUtils.isNotBlank( chkRememberMe ) ){
							//將帳密寫入cookie
							tls.setCookie(res,"UserId",userId,30);//30天
							tls.setCookie(res,"Password",sert.encrypt(password),30);//30天
						}
						
						strPage = "loginadmin/shopAdminIndex";
					}
				}
				
		}else{
			
			vo = (Account)s.getAttribute("loginVo");
			String userId1 = vo.getUserId();
			String password1 = vo.getUserPw();
			
			String encPassword = sert.encrypt(password);//加密比對
			
			//因帳密和loginVo的session帳密傳進來輸入的不對，以新帳密所以重新檢查帳密
			if(!userId.equals(userId1) || !encPassword.equals(password1)){//密碼檢核和原來不對，進行下一步檢核
				//重新檢查是否有此帳號密碼
				if (tls.chkEngOrNum(userId) && tls.chkEngOrNum(password)
						&& !tls.chkReqValue(req, userId, 4, 30)
						&& !tls.chkReqValue(req, password, 4, 30)) {
	
					vo = loginService.queryUser(userId, password); //查詢資料
					// 若vo = null代表帳號或密碼有誤
					if (vo == null) {
						//移除Cookie
						tls.removeCookie(res, req, "UserId");
						tls.removeCookie(res, req, "Password");
						//移除登入Session
						s.removeAttribute("loginHomeSession");
						model.addAttribute("msg", lng.getStr("MSG0010"));
						strPage = "loginadmin/loginShopAdmin";
						
						return strPage;
					}else{
						
						s.setMaxInactiveInterval(60 * 60 * IntHours);
						s.setAttribute("loginVo", vo);//重新寫入session
						
						if( StringUtils.isNotBlank( chkRememberMe ) ){
							//將帳密寫入cookie
							tls.setCookie(res,"UserId",userId,30);//30天
							tls.setCookie(res,"Password",sert.encrypt(password),30);//30天
						}
						

						strPage = "loginadmin/shopAdminIndex";
						
						return strPage;
					}
				}
			}
				
			//以原有的loginVo session帳密登入進行取資料			
			vo = loginService.queryUser(userId1, sert.decrypt(password1));//重新取得資料
					
			s.setMaxInactiveInterval(60 * 60 * IntHours);
			s.setAttribute("loginVo",vo);//重新寫入session
			
			strPage = "loginadmin/shopAdminIndex";
		}

		return strPage;
	}
	
	
	//從畫面帳密登入設定登入Session
	@RequestMapping(value = "/loginChick", method = RequestMethod.POST)
	public String loginSetSession(@RequestParam String userId, @RequestParam String password,
			@RequestParam(required=false) String chkRememberMe, RedirectAttributes attr,
			Model model, HttpServletRequest req, HttpServletResponse res, HttpSession s) throws Exception {

		//設定登入Session
		s.setAttribute("loginHomeSession", "loginHomeSession");
		s.setMaxInactiveInterval(60 * 60 * IntHours);
		attr.addFlashAttribute("userId", userId);  
        attr.addFlashAttribute("password", password);
        attr.addFlashAttribute("chkRememberMe", chkRememberMe); 
		
		return "redirect:/loginadmin/home";
	}
	
	
	//登出
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession s, HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		Tools tls = new Tools();
		if( s.getAttribute("loginVo") != null ){
			s.removeAttribute("loginVo");
			tls.removeCookie(res, req, "UserId");
			tls.removeCookie(res, req, "Password");
			//移除登入Session
			s.removeAttribute("loginHomeSession");
		}
		
		return "loginadmin/loginShopAdmin";
	}
	
	
	//導回登入頁面
	@RequestMapping(value = "/sessiontimeout", method = RequestMethod.GET)
	public String sessiontimeout(Model model) throws HttpSessionRequiredException {

		return "loginadmin/loginShopAdmin";
	}
	
	
	
	

}