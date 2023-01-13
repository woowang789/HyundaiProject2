package com.hyundai.vo;

import java.util.List;

import lombok.Data;

@Data
public class ProductDetailDTO {
//소규석
	
	//브랜드 아이디
	private String bid;
	
	//브랜드 이름
	private String bname;
	
	//상품 아이디
	private String pid;

	//상품 이름
	private String pname;
	
	// 상품 내용
	private String pctnt;
	
	//상품 이미지
	private String pimg;

	//상품 카테고리 아이디
	private String cid;
	
	//상품 카테고리 이름
	private String cname;
	
	//상품 옵션 리스트
	private List<OptionDTO> optionList;
}
