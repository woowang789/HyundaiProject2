package com.hyundai.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CartProductDTO {
	private String id;
	private String name;
	private String thumb;

	private String oId;
	private String optionName;
	private String stock;
	private String originPrice;
	private String marketPrice;

	private String brandName;
	private String bId;
	
	private int qty;
	private Date cDate;
}
