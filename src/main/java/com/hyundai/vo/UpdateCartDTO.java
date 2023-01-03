package com.hyundai.vo;

import lombok.Data;

@Data
public class UpdateCartDTO {

	private String userId;
	private String prodId;
	private String optId;
	private int qty;
}
