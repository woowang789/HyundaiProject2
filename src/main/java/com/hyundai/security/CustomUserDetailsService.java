/**
 * CustomUserDetailsService  writer : 이한솔
 */
package com.hyundai.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hyundai.mapper.UserMapper;
import com.hyundai.vo.CustomUser;
import com.hyundai.vo.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod_=@Autowired)
	private UserMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		UserVO vo = mapper.read(username);
		log.warn("Load UserBy UserName : " + username);
		return vo == null ? null : new CustomUser(vo);
	}

}
