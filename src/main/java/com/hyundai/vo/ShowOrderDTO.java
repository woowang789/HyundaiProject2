package com.hyundai.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ShowOrderDTO {

	private String orderId;
	private Date orderDate;
	
	List<OrderProductDTO> list;
}
