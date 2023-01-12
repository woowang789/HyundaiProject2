package com.hyundai.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class ErrorController {
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access denied");
		
		model.addAttribute("msg", "접근할 수 없는 페이지 입니다.");
	}
}
