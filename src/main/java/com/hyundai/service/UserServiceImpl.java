package com.hyundai.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.hyundai.mapper.UserMapper;
import com.hyundai.vo.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;

	@Override
	public void register(UserVO uservo) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		log.info(uservo.getUser_pwd()); 
		uservo.setUser_pwd(passwordEncoder.encode(uservo.getUser_pwd()));
		String birth = uservo.getBirth_year() + "/" + uservo.getBirth_month() + "/" + uservo.getBirth_day();
		uservo.setUser_birth(birth);
		log.info("service join");
		mapper.insert(uservo);
	}
	
	@Override
	public int idCheck(String id) {
		int result = mapper.idCheckSelect(id);
		System.out.println("id="+id);
		return result;
	}
	@Override
	public boolean loginCheck(UserVO uservo) {
		String name = mapper.loginCheck(uservo);
		return (name == null) ? false: true;		
	}
	
	@Override
	public UserVO viewUser(UserVO vo) {
		UserVO uservo = new UserVO();
		uservo = mapper.viewUser(vo);
		return uservo;
	}

}
