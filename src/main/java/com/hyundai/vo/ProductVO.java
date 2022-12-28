package com.hyundai.vo;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class ProductVO {

	private String id;
	private String name;
	private String thumb;
	private String content;
	private Date pDate;
	private String cateId;
	private String brandId;
	private String img;
}
