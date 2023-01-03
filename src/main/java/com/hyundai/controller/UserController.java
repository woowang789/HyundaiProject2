package com.hyundai.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.service.UserService;
import com.hyundai.vo.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class UserController {

	private UserService service;

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

	@RequestMapping(value = "/completion-join", method = RequestMethod.GET)
	public String completionJoin() {
		log.info("/completion-join");

		return "member/completion_join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String register(UserVO user) throws Exception {

		service.register(user);

		return "member/completion_join";
	}

	@PostMapping("/join/check-id")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		System.out.println(id);
		int result = service.idCheck(id);
		return result;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginComplete() {
		log.info("로그인 성공");
		return "home";
	}

}
