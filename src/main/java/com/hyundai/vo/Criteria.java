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
	private String sort;

	public Criteria() {
		this(1, 10, "01", "1000001");
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;

	}

	public Criteria(int pageNum, int amount, String sort, String cateId) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.sort = sort;
		this.cateId = cateId;
	}
}
