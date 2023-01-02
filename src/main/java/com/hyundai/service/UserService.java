package com.hyundai.service;

import com.hyundai.vo.UserVO;

public interface UserService {
	
	public void register(UserVO uservo);
	
	public int idCheck(String id);
	
	public UserVO searchId(UserVO vo);
	
	public int searchPwd(UserVO vo);
	
}
