package com.hyundai.mapper;

import com.hyundai.vo.UserOrderInfoDTO;
import com.hyundai.vo.AuthVO;
import com.hyundai.vo.UserVO;

public interface UserMapper {
	
	public void insert(UserVO uservo);
	
	public int idCheckSelect(String user_id);

	public UserVO read(String user_id);
	
	public void insertAuth(AuthVO authvo);
	
	public UserOrderInfoDTO getInfoById(String user_id);
	
	public UserVO searchId(UserVO vo);
	
	public int searchPwd(UserVO vo);
	
	public void updatePwd(UserVO vo);
	
	public String checkCurPwd(String user_id);
}
