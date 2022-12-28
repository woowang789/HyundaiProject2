package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CartController {
	
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart() {
		log.info("/cart");
		
		return "cart";
	}

}
