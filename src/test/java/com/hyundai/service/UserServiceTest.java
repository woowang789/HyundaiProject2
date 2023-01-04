package com.hyundai.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserServiceTest {
	
	@Setter(onMethod_= @Autowired)
	private UserService service;
	
	@Test
	public void testRegister() {
		UserVO user = new UserVO();
		user.setUser_id("user7");
		user.setUser_pwd("user3");
		user.setUser_name("유저3");
		user.setUser_address("주소");
		user.setUser_tel("010-0000-3333");
		user.setBirth_year("19");
		user.setBirth_month("12");
		user.setBirth_day("05");
		
		service.register(user);
		log.info("회원가입 테스트");
	}
	
	@Test
	public void checkId() {
		String id="user3";
		int idcheck = service.idCheck(id);
		log.info("아이디 체크" + idcheck);
	}

}
