package com.hyundai.mapper;

import com.hyundai.vo.UserOrderInfoDTO;
import com.hyundai.vo.UserVO;

public interface UserMapper {
	
	public void insert(UserVO uservo);
	
	public int idCheckSelect(String user_id);
	
	public String loginCheck(UserVO vo);
	
	public UserVO viewUser(UserVO vo);
	
	public UserVO selectLogin(UserVO vo);
	
	public UserOrderInfoDTO getInfoById(String user_id);
}
