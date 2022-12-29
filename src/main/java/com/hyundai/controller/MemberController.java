package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		log.info("login");

		return "member/login";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		log.info("join");

		return "member/join";
	}

}
