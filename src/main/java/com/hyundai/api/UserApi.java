package com.hyundai.api;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.mapper.UserMapper;

import lombok.RequiredArgsConstructor;
@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class UserApi {
	
	private UserMapper mapper;
	
	@PostMapping("/checkPwd")
	public ResponseEntity<String> checkPwd
	(@RequestBody Map<String, String> body) throws Exception {
		String result = mapper.checkCurPwd(body.get("id"));
		
		return new ResponseEntity<>("success",HttpStatus.OK);
	}

}
