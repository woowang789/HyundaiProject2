package com.hyundai.vo;

import lombok.Data;

@Data
public class OrderProductDTO {

	private String id;
	private String name;
	private String thumb;
	
	private String oid;
	private String optionName;
	private int originPrice;
	private int marketPrice;
	
	private int qty;
	
	private String brandName;
	private String bId;
	
	// isSaled?? 
}
