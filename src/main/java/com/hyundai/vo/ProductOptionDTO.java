package com.hyundai.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductOptionDTO {

	private String pId;
	private String name;
	private String thumb;
	private Date pDate;
	
	private String oId;
	private String stock;
	private String originPrice;
	private String marketPrice;
}
