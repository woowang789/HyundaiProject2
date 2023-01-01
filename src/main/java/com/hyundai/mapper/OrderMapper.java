package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.InsertOrderDTO;
import com.hyundai.vo.ShowOrderDTO;

public interface OrderMapper {

	public int insertOrder(@Param("order") InsertOrderDTO order, 
				@Param("userId") String userId);
	
	public int insertOrderList(@Param("orderList") BeforeOrderDTO orderList,
			@Param("userId") String userId, @Param("orderId") String orderId);
	
	public List<ShowOrderDTO> getOrderListByUserId(@Param("userId") String userId, @Param("cri")Criteria cri);
	
	public int getOrderListCount(String userId);
}
