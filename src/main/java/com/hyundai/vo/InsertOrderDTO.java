package com.hyundai.vo;

import java.util.List;

import lombok.Data;

@Data
public class InsertOrderDTO {

	private String orderId;
	
	private String receiverName;
	private String receiverAddrRoad;
	private String receiverAddrJibun;
	private String receiverTel;
	private String payment;
	private int totalPrice;
	
	List<BeforeOrderDTO> list;
}
