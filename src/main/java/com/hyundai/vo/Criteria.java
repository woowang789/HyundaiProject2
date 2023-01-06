package com.hyundai.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum;
	private int amount;

	private String type;
	private String keyword;

	private String cateId;
	private String catePid;
	private String sort;

	private int minPrice;
	private int maxPrice;

	private String brandName;

	public Criteria() {
		this(1, 10, "01", "1000001", "100000100010008", "", 0, 999999999, "록시땅");
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;

	}

	public Criteria(int pageNum, int amount, String sort, String cateId, String catePid, String keyword, int minPrice,
			int maxPrice, String brandName) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.sort = sort;
		this.cateId = cateId;
		this.catePid = catePid;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
		this.keyword = keyword;
		this.brandName = brandName;
	}
}