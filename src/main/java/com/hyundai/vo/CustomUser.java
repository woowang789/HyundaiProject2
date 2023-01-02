package com.hyundai.vo;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	
	private UserVO user;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(UserVO vo) {
		super(vo.getUser_id(), vo.getUser_pwd(), vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuthority()))
		.collect(Collectors.toList()));
		
		this.user = vo;
	}
	
}
