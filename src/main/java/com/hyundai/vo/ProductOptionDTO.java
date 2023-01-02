package com.hyundai.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductOptionDTO {

	private String id;
	private String name;
	private String thumb;
	private Date pDate;

	private String oId;
	private String stock;
	private String originPrice;
	private String marketPrice;

	private String brandName;
	private String bId;
	
	private String cName;
	private String cId;
	private boolean wished;
	private Date wDate;
	
	// isSaled?? 
}
