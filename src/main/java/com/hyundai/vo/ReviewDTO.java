package com.hyundai.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	
	private Date reviewDate;
	private String reviewScore;
	private String reviewContent;
	private String reviewImg;

	private String orderId;
	private Date orderDate;
	
	private String optionId;
	private String optionName;
	
	private String productId;
	private String productName;
	private String productThumb;
	
	private String brandId;
	private String brandName;
	
	private String userId;
	private String userName;
}
