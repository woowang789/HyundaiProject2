package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class BestController {
	
	@RequestMapping(value="/best", method=RequestMethod.GET)
	public String best() {
		log.info("/best");
		
		return "tab/best";
	}

}
