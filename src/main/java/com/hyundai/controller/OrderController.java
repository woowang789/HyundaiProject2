package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class OrderController {
	
	@RequestMapping(value="/order-form", method = RequestMethod.GET)
	public String orderForm() {
		log.info("/order-form");
		
		return "order/order_form";
	}
	
	@RequestMapping(value="/order-completion", method = RequestMethod.GET)
	public String orderCompletion() {
		log.info("/order-completion");
		
		return "order/order_completion";
	}

}
