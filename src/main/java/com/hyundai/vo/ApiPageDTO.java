package com.hyundai.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ApiPageDTO<T> {
	int count;
	List<T> list;	
}
