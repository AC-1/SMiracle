package com.miracle.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miracle.security.UsersDetailsImpl;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	MessageSource lng;
	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.HEAD})
	public String home(Locale locale, Model model, Authentication auth, HttpSession s) {
		UsersDetailsImpl userDetails = (UsersDetailsImpl)auth.getPrincipal();
//		UsersDetailsImpl usersDetailsImpl = (UsersDetailsImpl)UserDetails;
		s.setAttribute("loginVo", userDetails.getUsers());
		s.setMaxInactiveInterval(60*60);
		
		String role = userDetails.getUsersRole().getRolename();
		
		return "home";
	}
	
	@RequestMapping(value = "/error", method = {RequestMethod.GET, RequestMethod.HEAD})
	public String error(Locale locale, Model model) {
		return "error";
	}
	
	@RequestMapping(value = "/signIn", method = {RequestMethod.GET, RequestMethod.HEAD})
	public String signIn(Locale locale, Model model) {
		return "signIn";
	}
	
	
	@RequestMapping(value="/failed", method = {RequestMethod.GET, RequestMethod.HEAD})
	public String loginerror(Locale locale, Model model) {
//		String errormessage = lng.getMessage("login.error", null, locale);
		model.addAttribute("error", "true");
		return "signIn";
 
	}
	
	
}
