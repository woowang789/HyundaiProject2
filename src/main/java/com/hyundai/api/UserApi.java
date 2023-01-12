package com.hyundai.api;

import java.security.Principal;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.mapper.UserMapper;
import com.hyundai.service.UserService;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
@RestController
@RequestMapping("mypage/api")
@AllArgsConstructor
public class UserApi {
	
	private UserMapper mapper;
	
	@PostMapping("/checkPwd")
	@ResponseBody
	public int checkPwdn(@RequestParam("pwd") String pwd, @RequestParam("id") String id){
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		String dbpwd = mapper.checkCurPwd(id);
		
		if(encoder.matches(pwd, dbpwd)) {
			return 1;
		}
		return 0;
	}
}
