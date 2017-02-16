package com.miracle.security;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.miracle.mode.Users;
import com.miracle.mode.UsersRole;

public class UsersDetailsImpl implements UserDetails {

    private static final long serialVersionUID = 1L;
    
	private Users users;
	
	private UsersRole usersRole;
	
    private List<GrantedAuthority> roles;
    
    public UsersDetailsImpl(Users users, UsersRole usersRole, List<GrantedAuthority> roles) {
        this.users = users;
        this.usersRole = usersRole;
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

	public UsersRole getUsersRole() {
		return usersRole;
	}
	
	

}
