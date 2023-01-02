package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.service.UserService;
import com.hyundai.vo.UserOrderInfoDTO;
import com.hyundai.vo.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class UserTests {
	
	@Setter(onMethod_= @Autowired)
	private UserService service;
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
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
	
	@Test
	public void testLogin() {
		UserVO user = new UserVO();
		user.setUser_id("test");
		user.setUser_pwd("$2a$10$3HMJX9WRx1OmY5x0QVoaa.TB3ssXdfkvmh8QYNP0zF.gKlCYDkQm2");
		boolean result =service.loginCheck(user);
		log.info(result);
		log.info("로그인 시도 " + result);
	}
	
	@Test
	public void testUser() {
		UserVO user = new UserVO();
		user.setUser_id("user3");
		user.setUser_pwd("user3");
		UserVO loginVO = service.viewUser(user);
		log.info("이름은" + loginVO.getUser_name());
		log.info("주소는 " +loginVO.getUser_address());
		log.info("생일은" + loginVO.getUser_birth());
	}
		
	@Test
	public void getUserOrderInfo() {
		UserOrderInfoDTO dto = mapper.getInfoById("user1@email.com");
		log.info(dto.getName());
		log.info(dto.getTel());
	}
}
