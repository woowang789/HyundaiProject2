package com.hyundai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.mapper.ProductDetailMapper;
import com.hyundai.vo.ProductDetailDTO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProductController {
	
	@Autowired
	private ProductDetailMapper mapper;
	
	private String pid ="B000000144271";
	
	@RequestMapping(value="/product-detail", method = RequestMethod.GET)
	public String productDetail(@RequestParam String pid, Model model) {
		log.info("/product-detail");
	model.addAttribute("product_detail",mapper.getProductDetail(pid));
		
		return "product/product_detail";
	}
	

	@ResponseBody
	@RequestMapping(value="/product-detail2", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ProductDetailDTO productDetail2(@RequestParam String pid, Model model) {
		log.info("/product-detail: " + pid);
		
		return mapper.getProductDetail(pid);
	}

}
