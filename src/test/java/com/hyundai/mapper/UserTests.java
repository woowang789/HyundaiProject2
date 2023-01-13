/**
 *  UserTests writer : 이한솔
 */

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

	@Setter(onMethod_=@Autowired)
	private UserMapper mapper;
	
	@Test
	public void testRead() {
		UserVO vo = mapper.read("test5");
		log.info(vo);
		vo.getAuthList().forEach(authVO -> log.info(authVO));
	}
		
	@Test
	public void getUserOrderInfo() {
		UserOrderInfoDTO dto = mapper.getInfoById("user1@email.com");
		log.info(dto.getName());
		log.info(dto.getTel());
	}
	
	@Test
	public void searchPwd() {
		UserVO user = new UserVO();
		user.setUser_id("user1@email.com");
		user.setUser_birth("220101");
		user.setUser_tel("010-0000-0000");
		int result = mapper.searchPwd(user);
		log.info(result);
	}
	
	@Test
	public void updatePwd() {
		UserVO user = new UserVO();
		user.setUser_id("user3");
		user.setUser_pwd("user333");
		mapper.updatePwd(user);
		log.info("비밀번호 변경");
		log.info(user.getUser_pwd());
	}
	
	@Test
	public void curPwd() {
		String id = "user1@email.com";
		String pwd = mapper.checkCurPwd(id);
		log.info(pwd);
	}
	
	@Test
	public void updateUser() {
		UserVO vo = new UserVO();
		vo.setUser_pwd("user11");
		vo.setUser_address("user1 address");
		vo.setUser_name("유저1");
		vo.setUser_tel("012-000-0000");
		vo.setUser_id("user1@email.com");
		mapper.updateUser(vo);
		log.info("회원정보 수정");
	}
	
	@Test
	public void deleteUser() {
		String user = "user7";
		mapper.deleteUser(user);
		log.info("회원 삭제");
	}
	
}
