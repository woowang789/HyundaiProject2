package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.service.UserService;
import com.hyundai.vo.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class UserTests {
	
	@Setter(onMethod_= {@Autowired})
	private UserService service;
	
	@Setter(onMethod_= @Autowired)
	private PasswordEncoder pwencoder;
	
	@Test
	public void testRegister() {
		UserVO user = new UserVO();
		user.setUser_id("user3");
		user.setUser_pwd("user3");
		user.setUser_name("유저3");
		user.setUser_address("주소");
		user.setUser_tel("010-0000-3333");
		user.setUser_birth("19/10/10");
		
		service.register(user);
		log.info("회원가입 테스트");
	}
	
	@Test
	public void testSecuRegister() {
		UserVO user = new UserVO();
		user.setUser_id("user4");
		user.setUser_pwd(pwencoder.encode("user4"));
		user.setUser_name("유저3");
		user.setUser_address("주소");
		user.setUser_tel("010-0000-3333");
		user.setUser_birth("19/10/10");
		
		service.register(user);
		log.info("회원가입 secu 테스트");
	}
	
}
