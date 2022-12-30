package com.hyundai.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderProductDTO {

	private String id;
	private String name;
	private String thumb;
	
	private String oId;
	private String optionName;
	private int originPrice;
	private int marketPrice;
	
	private int qty;
	
	private String brandName;
	private String bId;
}
