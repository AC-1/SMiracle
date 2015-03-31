package com.miracle.security;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.miracle.mode.Users;

public class UsersDetailsImpl implements UserDetails {

    private static final long serialVersionUID = 1L;
    
	private Users users;
	
    private List<GrantedAuthority> roles;
    
    public UsersDetailsImpl(Users users, List<GrantedAuthority> roles) {
        this.users = users;
        this.roles = roles;
    }
    
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return roles;
	}
	
	@Override
	public String getPassword() {
		return users.getPassword();
	}
	
	@Override
	public String getUsername() {
		return users.getUsername();
	}
	
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}
	
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	
	@Override
	public boolean isEnabled() {
		return true;
	}
	
	public Users getUsers() {
        return users;
    }
	

}
