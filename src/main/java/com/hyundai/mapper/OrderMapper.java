package com.hyundai.mapper;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.OrderDTO;

public interface OrderMapper {

	public int insertOrder(@Param("order") OrderDTO order, 
				@Param("userId") String userId);
	
	public int insertOrderList(@Param("orderList") BeforeOrderDTO orderList,
			@Param("userId") String userId, @Param("orderId") String orderId);
}
