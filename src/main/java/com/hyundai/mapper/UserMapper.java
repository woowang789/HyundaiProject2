package com.hyundai.mapper;

import com.hyundai.vo.UserVO;

public interface UserMapper {
	
	public void insert(UserVO uservo);
	
	public int idCheckSelect(String user_id);
	
	public UserVO selectLogin(UserVO vo);

}
