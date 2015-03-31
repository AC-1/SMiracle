package com.miracle.web.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, Authentication auth, HttpSession s) {
		UsersDetailsImpl userDetails = (UsersDetailsImpl)auth.getPrincipal();
//		UsersDetailsImpl usersDetailsImpl = (UsersDetailsImpl)UserDetails;
		s.setAttribute("loginVo", userDetails.getUsers());
		s.setMaxInactiveInterval(60*60);
		return "home";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error(Locale locale, Model model) {
		return "error";
	}
	
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String signIn(Locale locale, Model model) {
		return "signIn";
	}
	
	
	
}
