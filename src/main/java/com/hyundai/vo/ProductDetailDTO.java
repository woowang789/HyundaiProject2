package com.hyundai.vo;

import java.util.List;

import lombok.Data;

@Data
public class ProductDetailDTO {
	private String bid;
	private String bname;
	
	private String pid;
	private String pname;
	private String pctnt;
	private String pimg;
	
	private String cid;
	private String cname;
	
	private List<OptionDTO> optionList;
}
