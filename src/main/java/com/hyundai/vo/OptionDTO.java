package com.hyundai.vo;

import lombok.Data;

@Data
public class OptionDTO {
	private String oid;
	private String oname;
	private String othumb;
	private String stock;
	private int originPrice;
	private int marketPrice;
}
