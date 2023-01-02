package com.hyundai.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.mapper.UserMapper;
import com.hyundai.vo.AuthVO;
import com.hyundai.vo.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	@Transactional
	@Override
	public void register(UserVO uservo) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		log.info(uservo.getUser_pwd()); 
		uservo.setUser_pwd(passwordEncoder.encode(uservo.getUser_pwd()));
		String birth = uservo.getBirth_year() + "/" + uservo.getBirth_month() + "/" + uservo.getBirth_day();
		uservo.setUser_birth(birth);
		log.info("service join");
		mapper.insert(uservo);
		
		AuthVO auth = new AuthVO();
		auth.setUser_id(uservo.getUser_id());
		auth.setAuthority("ROLE_MEMBER");
		mapper.insertAuth(auth);
	}
	
	@Override
	public int idCheck(String id) {
		int result = mapper.idCheckSelect(id);
		System.out.println("id="+id);
		return result;
	}
	@Override
	public boolean loginCheck(UserVO uservo) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		uservo.setUser_pwd(passwordEncoder.encode(uservo.getUser_pwd()));
		System.out.println(passwordEncoder.encode(uservo.getUser_pwd()));
		String name = mapper.loginCheck(uservo);
		return (name == null) ? false: true;		
	}
	
}
