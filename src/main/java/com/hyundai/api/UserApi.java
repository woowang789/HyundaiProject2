package com.hyundai.api;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.mapper.UserMapper;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("mypage/api")
@AllArgsConstructor
public class UserApi {
	
	private UserMapper mapper;
	
	@PostMapping("/checkPwd")
	public int checkPwdn(@RequestParam("pwd") String pwd, @RequestParam("id") String id){
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		String dbpwd = mapper.checkCurPwd(id);
		
		if(encoder.matches(pwd, dbpwd)) {
			return 1;
		}
		return 0;
	}
}
