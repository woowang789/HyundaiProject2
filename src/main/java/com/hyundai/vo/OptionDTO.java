package com.hyundai.vo;

import lombok.Data;

@Data
public class OptionDTO {
//소규석
	
	//상품 옵션 아이디
	private String oid;
	
	//상품 옵션 이름
	private String oname;
	
	//상품 옵션 섬네일 이미지
	private String othumb;
	
	//상품 옵션별 재고량
	private String stock;
	
	//상품 옵션별 원가
	private int originPrice;
	
	//상품 옵션별 구매가
	private int marketPrice;
}
