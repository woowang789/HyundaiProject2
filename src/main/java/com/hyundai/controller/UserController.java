package com.hyundai.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(){
		log.info("join");
		
		return "member/join";
	}
	
	
	
	@RequestMapping(value="/completion-join", method=RequestMethod.GET)
	public String completionJoin(){
		log.info("/completion-join");
		
		return "member/completion_join";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
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
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginComplete() {
		log.info("로그인 성공");
		return "home";
	}
//	public ModelAndView loginUser(UserVO user, HttpSession session) throws Exception{
//		boolean loginResult = service.loginCheck(user);
//		System.out.println(loginResult);
//		ModelAndView mav = new ModelAndView();
//		if(loginResult) {
//			UserVO uservo = service.viewUser(user);
//			session.setAttribute("user_id", uservo.getUser_id());
//			session.setAttribute("user_name", uservo.getUser_name());
//			session.setAttribute("user_birth", uservo.getUser_birth());
//			session.setAttribute("user_address", uservo.getUser_address());
//			session.setAttribute("user_tel", uservo.getUser_tel());
//			mav.setViewName("home");
//			mav.addObject("msg", "success");
//		}else {
//			System.out.println("로그인실패");
//			mav.setViewName("member/login");
//			mav.addObject("msg","failure");
//		}
//		return mav;
//	}

}
