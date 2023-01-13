package com.hyundai.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class CategoryDTO {
//소규석
	
	//카테고리 이름
	private String cateName;
	
	//카테고리 아이디
	private String cateId;
	
	//부모 카테고리 아이디
	private String catePid;
	
	//부모 카테고리 이름
	private String catePname;

}
