package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class SaleController {
	
	@RequestMapping(value="/sale", method = RequestMethod.GET)
	public String sale() {
		log.info("sale");
		
		return "tab/sale";
	}

}
