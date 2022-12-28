package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProductController {
	@RequestMapping(value="/product-detail", method = RequestMethod.GET)
	public String productDetail() {
		log.info("/product-detail");
		
		return "product/product_detail";
	}

}
