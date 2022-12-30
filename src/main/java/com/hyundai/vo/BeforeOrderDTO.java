package com.hyundai.vo;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class BeforeOrderDTO {

	private String pId;
	private String oId;
	private int qty;

	private List<BeforeOrderDTO> list;
	
	public List<BeforeOrderDTO> getList(){
		return this.list;
	}
	public void setList(List<BeforeOrderDTO> list) {
		this.list = list;
	}
	
}
