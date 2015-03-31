package com.miracle.security;

import java.util.List;
import java.util.Vector;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.miracle.dao.UsersDao;
import com.miracle.dao.UsersRoleDao;
import com.miracle.mode.Users;
import com.miracle.mode.UsersRole;

@Service
public class UsersDetailsService implements UserDetailsService{
	
	
	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private UsersRoleDao usersRoleDao;
	
	private List<GrantedAuthority> userAuthorities = new Vector<GrantedAuthority>();

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		if(!StringUtils.isEmpty(username)){
			Users users = usersDao.findByUsersName(username);
			if (StringUtils.equals(users.getUsername(), username)) {
				UsersRole role = usersRoleDao.findByUserName(username);
				List<GrantedAuthority> userAuthorities = getRoles(role);
				UsersDetailsImpl usersDetailsImpl = new UsersDetailsImpl(users, userAuthorities);
				Authentication authentication = new UsernamePasswordAuthenticationToken(usersDetailsImpl, users.getPassword(), userAuthorities);
				SecurityContextHolder.getContext().setAuthentication(authentication);
				return usersDetailsImpl;
			}
		}
		throw new UsernameNotFoundException("Username " + username
				+ " not found!");
	}
	
	private List<GrantedAuthority> getRoles(UsersRole role){
		userAuthorities.clear();
		userAuthorities.add(new GrantedAuthorityImpl(role.getRolename()));
		return userAuthorities;
	}

}
