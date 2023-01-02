package com.hyundai.service;

import com.hyundai.vo.AuthVO;
import com.hyundai.vo.UserVO;

public interface UserService {
	
	public void register(UserVO uservo);
	
	public int idCheck(String id);
	
	public boolean loginCheck(UserVO uservo);
	
}
